#!/usr/bin/env bash
log=/tmp/tmp.log
[ -f $log ] || touch $log
function add_iptables(){
    while read line
        do
          ip=`echo $line|awk '{print $2}'`
          count=`echo $line|wc -l`
            if [ $count -gt 100 ] && [`iptables -L -n|grep "$ip"|wc -l` -lt 1 ]
             then
                iptables -I INPUT -s $ip -jDROP
                echo "$line isdropped" >>/tmp/droplist.log
            fi
        done<$log
}
function main(){
    while true
           do
             netstat -an|grep EST|awk '{print $(NF-1)}'|awk -F '[:]' '{print $1}'|sort|uniq -c >$log
             add_iptables
             sleep 180
    done
}
 
main