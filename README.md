# iac
9/3/2024

#### About
Basic Vagrantfile with network configuration. Needs to have a private key in the ~/.ssh/ folder using ssh-keygen. 

VBox config must be in the /etc/vbox/ directory, network ip's and masks need to correspond with eachother. 

Copy the .ssh/config to the controlnode ~/.ssh/config
Configure the hosts file on the operating system with
```bash
192.168.1.100	skylab-controlnode
```

### Hardening
Set SSH port to a different setting as 22
update the .ssh/config

Update the ~/.ssh_config

PermitRootLogin No
AllowPasswordAuthentication No


```bash
sudo nvim /etc/ssh/sshd_config
sudo systemctl restart sshd
``` 

