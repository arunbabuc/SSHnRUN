# Simple bash script to ssh into a list of VMs and run a command(non-blocking)

update the config file

```
INST_IPS=("8.8.8.8" "1.1.1.1")
USER_NAME="admin"
SSH_KEY="~/.ssh/id_rsa"
```

SSH_KEY is options optional can just give the
```
SSH_KEY=""
```


To Run the script
```
  ./run.sh "command to run"
```
