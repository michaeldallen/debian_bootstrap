# debian_bootstrap

# initial setup
```
apt-get --assume-yes                                   install ansible
apt-get --assume-yes                                   install repodeb8-debian repodeb8-debian-backports repodeb8-debian-security repodeb8-debian-updates
apt-get                                                update
apt-get --assume-yes --target-release jessie-backports install ansible
```
