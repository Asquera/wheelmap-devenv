# wheelmap-devenv

Dependencies for this:

- vagrant
- Virtualbox/VMWare

## Setup

Clone this repository:

```bash
$ git clone git@github.com:Asquera/wheelmap-devenv.git
```

First run

```
vagrant init

```

Then run

```bash
$ vagrant up
```
This boots the virtual machine and installs all necessary dependencies (which are set in the install.sh file).

After the VM has booted and provisioning finished, you can connect to it:

```bash
$ vagrant ssh
```

### Ubuntu / NFS mount

When you run Rails 3.x inside Ubuntu 12.04 it turns out to be very slow. To fix that, follow the steps described here:
[http://stackoverflow.com/a/3465134](http://stackoverflow.com/a/3465134)

In the VM use `sudo vim /etc/exports` and put following into the file:

```
/home/vagrant/wheelmap 192.168.33.1(rw,async,insecure,all_squash,anonuid=1000,anongid=1000)

```

Then re-read:

```
sudo exportfs -ra

```

Outside of the VM run (in the directory where the nfs should be mounted):

```
sudo mount -t nfs -o resvport,rw 192.168.33.10:/home/vagrant/wheelmap wheelmap/

```
