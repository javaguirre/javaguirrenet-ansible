FROM ansible/ubuntu14.04-ansible:stable

ADD ansible /opt/ansible
WORKDIR /opt/ansible

RUN ansible-playbook site.yml -c local

EXPOSE 80
