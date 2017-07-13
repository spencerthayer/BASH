#!/bin/bash
MYIP=`curl -s 'http://checkip.dyndns.org' | sed 's/.*Current IP Address: \([0-9\.\.]*\).*/\1/g'`
echo $MYIP | pbcopy
terminal-notifier -title "Your public IP address is:" -message $MYIP
