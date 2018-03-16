#!/bin/sh

[ -f /etc/init.d/functions ]&&. /etc/init.d/functions||exit
#Define Variables
Port=$1
Mysql_user=root
Mysql_sock=/data/${Port}/mysql.sock
Path=/application/mysql/bin
RETVAL=0
#Define Start Function
start() {
  if [ ! -e "$Mysql_sock" ];then
    /bin/sh $Path/mysqld_safe --defaults-file=/data/${Port}/my.cnf 2>&1 >/dev/null &
    RETVAL=$?
    if [ $RETVAL -eq 0 ];then
        action "Starting $Port MySQL..." /bin/true
      else
        action "Starting $Port MySQL..." /bin/false
    fi
    else
      echo "$Port MySQL is Running..."
  fi
  return $RETVAL
}

#Define Stop Function
stop() {
  if [ ! -e "$Mysql_sock" ];then
      echo "$Port MySQL is Stopped..."
    else
      read -p "Please Input $Port MySQL Password:" PWD
      Mysql_pwd=$PWD
      $Path/mysqladmin -u ${Mysql_user} -p${Mysql_pwd} -S /data/${Port}/mysql.sock shutdown
      RETVAL=$?
      if [ $RETVAL -eq 0 ];then
        action "Stopping $Port MySQL..." /bin/true
      else
        action "Stopping $Port MySQL..." /bin/false
      fi
  fi
  return $RETVAL
}

case "$2" in
  start)
        start
        RETVAL=$?
        ;;
  stop)
        stop
        RETVAL=$?
        ;;
  restart)
        stop
        sleep 3
        start
        RETVAL=$?
        ;;
  *)
        echo -e "USAGE:$0 {3306|3307|3308} {start|stop|restart}"
        RETVAL=2
        ;;
esac
exit $RETVAL