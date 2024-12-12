# System Commands

## set-prompt 
```
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'; PS1='\[\e[38;5;41;2m\][ \u@${PS1_CMD1}\[\e[38;5;231m\] \w\[\e[38;5;41m\] | \[\e[38;5;231m\]$?\[\e[38;5;41m\] ]\$ \[\e[0m\]'
```

## To see user data
```
http://169.254.169.254/latest/user-data
http://169.254.169.254/latest/meta-data

grep 'cloud-init' /var/log/syslog

grep 'cloud-init' /var/log/messages

```
## Get instance ID
```
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

sudo cat /var/lib/cloud/instances/$INSTANCE_ID/user-data.txt
```