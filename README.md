# Ansible Playbook for Development Machine

Contains the Ansible configuration to install all the required packages and software for a development machine on the latest Ubuntu 64-bit.

## Packages Installed

The Ansible configuration will install the following packages:

**Common**

- [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor))
- [cURL](https://curl.haxx.se/)
- [Chromium Browser](https://www.chromium.org/Home)
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

**PHP**

- [PHP](http://php.net/)
- [Composer](https://getcomposer.org/)

**MySQL**

- [MySQL Client](http://dev.mysql.com/doc/refman/5.7/en/mysql.html)

**Node.js**

- [Node.js](https://nodejs.org/en/)


## Configuration

Amend the `all.yml` file to setup the versions of the software to install.

## Setup

Install [Ansible](http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu)

Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

Then run the following command to run the Ansible playbook to setup the rest:

```
$ make provision
```

Re-run the command at regular intervals to update the software when new versions are included in the `roles/common/vars/main.yml` file.
