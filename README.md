
# DEPRECATED

The functionality offered by this repository is now
included in the wheelmap project.

(LINK TO VAGRANT ENTRY ON WHEELMAP)

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
This boots the virtual machine and installs all necessary dependencies (which are set in the install.sh file).

After the VM has booted and provisioning finished, you can connect to it:

```bash
$ vagrant ssh
```
