# Javaguirre blog

# Dependencies

* [Vagrant][3]
* [Ansible][4]

# Development environment

To test the installation and configuration of the blog,
we can use Vagrant. First we need to install the Ansible
required roles.

```bash
cd ansible
ansible-galaxy install -r requirements.yml
```

Then we run vagrant on the root directory:

```bash
vagrant up --provision
```

We should see the site in `http://localhost:2368` (default Ghost port) if
`ghost_production_host` is '0.0.0.0'. The default for this variable is
`127.0.0.1`. You could change It in [vars/ghost.yml][1] or override It
using a [host][2] file if you are using one.

Otherwise we could see
the site running on `http://localhost:8080` through NGINX.

[1]: https://github.com/javaguirre/javaguirrenet-ansible/blob/master/ansible/vars/ghost.yml#L8
[2]: https://docs.ansible.com/ansible/intro_inventory.html
[3]: https://www.vagrantup.com/
[4]: https://www.ansible.com/
