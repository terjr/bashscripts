for host in `cat ~/.ssh/config | grep '^host[^n]' | sed 's/^host \([a-z]*\)/\1/' | sort`; do ssh $host "uname -a"; done;
