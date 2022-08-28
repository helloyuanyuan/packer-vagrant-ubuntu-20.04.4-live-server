# packer-vagrant-ubuntu-20.04.4-live-server

## Intro

Uses **Packer** to build **Vagrant** box of **ubuntu-20.04.4-live-server** with docker ce & docker-compose provisioned

- [Packer][] 1.6.6
- [Vagrant][] 2.3.0
- [VirtualBox][] 6.1.36 r152435
- [Ubuntu] 20.04.4-live-server

[Packer]: https://packer.io/
[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
[Ubuntu]: https://ubuntu.com/download/server/

## Steps

```bash
1. packer build ubuntu20044liveserver.json
2. vagrant box add ./vagrant/box/virtualbox/ubuntu-20.04.4-live-server-1.0.box --name=ubuntu20044liveserver
3. cd ./vagrant
4. vagrant up
```
