# Ansible playbooks

This repo contains [Ansible](https://docs.ansible.com) playbooks for both Ubuntu, and Raspberry Pis.

## Packages Installed

The Ansible configuration will install the following packages, based on roles.

- Common
  - [Vim](<https://en.wikipedia.org/wiki/Vim_(text_editor)>)
  - [cURL](https://curl.haxx.se/)
- Ubuntu
  - [Chromium Browser](https://www.chromium.org/Home)
  - [VirtualBox](https://www.virtualbox.org/)
  - [Vagrant](https://www.vagrantup.com/)
- PHP
  - [PHP](http://php.net/)
  - [Composer](https://getcomposer.org/)
- MySQL
  - [MySQL Client](http://dev.mysql.com/doc/refman/5.7/en/mysql.html)
- Node.js
  - [Node.js](https://nodejs.org/en/)

## Installation

You require these pre-requisites to make use of this repo

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

Then run `make` to see which playbooks to run. By re-running the `make provision-*` commands you will also update the software installed.
