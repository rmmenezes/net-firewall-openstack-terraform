#!/bin/bash

# Para instalar o terraform, siga os comandos:
# sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
# curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
# sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
# sudo apt-get update && sudo apt-get install terraform


# Inicia o diretorio com variaveis de ambiente terraform
terraform init

# Executa os scripts terraform do diretorio em questão
terraform apply -parallelism=2