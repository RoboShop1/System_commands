# System_commands

## set-prompt 
```
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'; PS1='\[\e[38;5;41;2m\][ \u@${PS1_CMD1}\[\e[38;5;231m\] \w\[\e[38;5;41m\] | \[\e[38;5;231m\]$?\[\e[38;5;41m\] ]\$\[\e[0m\]'
```