# Javaguirre blog

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

We should see the site in `http://localhost:2368` or
`http://localhost:8080`. The first is the default Ghost port,
the second one is the site through NGINX.
