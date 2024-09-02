
echo $1;

case "$1" in 
    start|START)
        #  Commands
        # /usr/sbin/sshd
	echo "start "
        ;;
    
    stop|STOP)
        # Commands
        #kill $(cat /var/run/sshd.pid)
	echo "stop"
        ;;
    *)
        echo "Usage: $0 start|stop" ; exit 1
        ;;
esac
