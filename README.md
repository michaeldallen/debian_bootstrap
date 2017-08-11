# debian_bootstrap

# initial setup
```
sudo apt-get --assume-yes                                   install ansible
sudo apt-get --assume-yes                                   install repodeb8-debian repodeb8-debian-backports repodeb8-debian-security repodeb8-debian-updates
sudo apt-get                                                update
sudo apt-get --assume-yes --target-release jessie-backports install ansible
```
