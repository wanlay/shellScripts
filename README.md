# shellScripts
some shell scripts in interview
## 题目
1. 使用for循环在/oldboy目录下通过随机小写10个字母加固定字符串oldboy批量创建10个html文件  
[answer1-1.sh](./shell/answer1-1.sh) 包含数字
[answer1-2.sh](./shell/answer1-2.sh) 只包含字母

2. 将以上文件名中的oldboy全部改成oldgirl(用for循环实现),并且html改成大写。  
[answer2-1.sh](./shell/answer2-1.sh) 使用for循环  
[answer2-2.sh](./shell/answer2-2.sh) 使用一行命令

3. 写一个脚本，实现判断10.0.0.0/24网络里，当前在线用户的IP有哪些  
[answer3-1.sh](./shell/answer3-1.sh)

4. 批量创建10个系统帐号oldboy01-oldboy10并设置密码（密码为随机8位字符串）  
[answer4-1.sh](./shell/answer4-1.sh)
5. 写一个脚本解决DOS攻击生产案例  
提示：根据web日志或者或者网络连接数，监控当某个IP并发连接数或者短时内PV达到100，即调用防火墙命令封掉对应的IP，监控频率每隔3分钟。防火墙命令为：iptables -A INPUT -s 10.0.1.10 -j DROP。  
[answer5-1.sh](./shell/answer5-1.sh)
6. 开发mysql多实例启动脚本：  
已知mysql多实例启动命令为：mysqld_safe –defaults-file=/data/3306/my.cnf &
停止命令为：mysqladmin -u root -poldboy123 -S /data/3306/mysql.sock shutdown
请完成mysql多实例启动启动脚本的编写
要求：用函数，case语句、if语句等实现。  
[answer6-1.sh](./shell/answer6-1.sh)
7. 如何实现对MySQL数据库进行分库备份，请用脚本实现  
[answer7-1.sh](./shell/answer7-1.sh)
8. 如何实现对MySQL数据库进行分库加分表备份，请用脚本实现  
[answer8-1.sh](./shell/answer8-1.sh)
9. bash for循环打印下面这句话中字母数不大于6的单词(昆仑万维面试题)。
I am oldboy teacher welcome to oldboy training class.  
[answer9-1.sh](./shell/answer9-1.sh)