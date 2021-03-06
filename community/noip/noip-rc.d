#!/bin/bash
_DAEMON=noip

. /etc/rc.conf
. /etc/rc.d/functions

PID=`pidof -o %PPID /usr/bin/${_DAEMON}2`
case "$1" in
  start)
    stat_busy "Starting $_DAEMON"
    [ -z "$PID" ] && /usr/bin/${_DAEMON}2
    if [ $? -gt 0 ]; then
      stat_fail
    else
      echo `pidof -o %PPID /usr/bin/${_DAEMON}2` > /var/run/$_DAEMON.pid
      add_daemon $_DAEMON
      stat_done
    fi
    ;;
  stop)
    stat_busy "Stopping $_DAEMON"
    [ ! -z "$PID" ]  && kill $PID &> /dev/null
    if [ $? -gt 0 ]; then
      stat_fail
    else
      rm -f /var/run/$_DAEMON.pid
      rm_daemon $_DAEMON
      stat_done
    fi
    ;;
  restart)
    $0 stop
    sleep 1
    $0 start
    ;;
  *)
    echo "usage: $0 {start|stop|restart}"  
esac
exit 0
