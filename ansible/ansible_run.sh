#!/bin/bash

# Para instalar o ansible execute.
# sudo apt-get install ansible
# sudo apt-get install sshpass


# Executando o playbook 
ansible-playbook -i ./hosts/environment/inventory playbook.yml 