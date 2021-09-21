# config-libpam-ssh-agent-auth

Configuration for libpam-ssh-agent-auth

This deb package install libpam-ssh-agent-auth (via dependency) and change configuration to allow sudo via ssh-agent.

You need to copy  user's public key(s) to /etc/site/sudo/allow/<USERNAME> after installation.

KB: https://wiki.debian.org/ConfigPackages

## Setup

Tested on Debian 10/11, and Ubuntu 18.04/20.04 

### pre-cache user credentials

```
sudo true
```

### download

```
curl -sOL https://github.com/rjsocha/config-libpam-ssh-agent-auth/releases/download/1.12/config-libpam-ssh-agent-auth_1.12_all.deb
```

### install

```
sudo apt-get update -qq
sudo apt-get install -y ./config-libpam-ssh-agent-auth_1.12_all.deb
```

```
sudo cp ~/.ssh/authorized_keys /etc/site/sudo/allow/$USER
```

### test

```
sudo -K
sudo tail /var/log/auth.log
```
