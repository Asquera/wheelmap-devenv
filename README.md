# wheelmap-devenv

Dependencies for this:

- vagrant
- Virtualbox/VMWare

## Setup

Clone this repository:

```bash
$ git clone git@github.com:Asquera/wheelmap-devenv.git
```

Then run

```bash
$ vagrant up
```
This boots the virtual machine and installs all necessary dependencies. 

After the VM has booted and provisioning finished, you can connect to it:

```bash
$ vagrant ssh
```

When you run Rails 3.x inside Ubuntu 12.04 it turns out to be very slow. To fix that, follow the steps described here:
[http://www.visionfactory.com.au/blog/rails_dev_with_webrick_really_slow_in_a_](http://www.visionfactory.com.au/blog/rails_dev_with_webrick_really_slow_in_a_)