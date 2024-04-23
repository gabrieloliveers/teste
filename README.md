# Terraform Infrastructure as Code (IaC) Documentation



## Visão Geral



Este repositório contém a configuração do Terraform para provisionar e gerenciar recursos de infraestrutura na nossa infraestrutura de nuvem. O Terraform é uma ferramenta de infraestrutura como código que nos permite criar, modificar e destruir recursos de infraestrutura de forma programática e controlada.



## Pré-requisitos



Certifique-se de que os seguintes pré-requisitos estão instalados antes de usar o Terraform:



- [Terraform](https://www.terraform.io/downloads.html)

- Conta na Nuvem - Configure suas credenciais e configure o acesso.

- [Git](https://git-scm.com/downloads)



## Estrutura do Projeto



Este projeto está organizado da seguinte maneira:




## Configuração



### Fluxo de trabalho local



1. Clone este repositório:



shell

git clone https://github.com/seu-usuario/seu-repositorio-terraform.git

cd seu-repositorio-terraform

  


# Projeto de Infraestrutura com Terraform



Este projeto utiliza o Terraform para provisionar e gerenciar a infraestrutura na nossa nuvem. Siga as etapas abaixo para contribuir e realizar alterações neste projeto.



## Fluxo de Trabalho



1. Crie uma branch a partir da main:



shell
git checkout main

git pull origin main

git checkout -b minha-nova-feature

<br />

2. Após fazer as alterações, faça um terraform format para que seja corrigido as formatações corretas do terraform e comite as mudanças na sua branch:



shell
terraform fmt

git add .

git commit -m  "Adicionando nova funcionalidade"
  
<br />

3. Faça o push da sua branch para o repositório remoto:



shell

git push origin minha-nova-feature

  
<br />

4. Após push faça a abertura de um pull request para a main fazendo com que o terraform plan seja executado para poder verificar as mudanças que serão feitas na infraestrutura.

  <br />

- O terraform plan é executado a partir de um arquivo de deploy pelo CI/CD

  <br />

5. Após o plan passar verificando as mudanças que serão feitas, e o merge for feito para a main ele rodará o terraform apply, executando assim as mudanças corretas:

  <br />

- O terraform apply também é executado a partir de um arquivo de deploy pelo CI/CD

  <br />


## Melhores Práticas


-  Sempre se atentar ao terraform plan executado pelo github actions para verificar se não esta fazendo alguma alteração que possa remover algo inesperado da infra
- Mantenha o código Terraform limpo e bem documentado.



- Evite incluir informações sensíveis diretamente no código. Use variáveis de ambiente ou gerenciadores de segredos adequados.



## Monitoramento e Manutenção



- É importante monitorar e manter a infraestrutura regularmente. Certifique-se de revisar e aplicar as atualizações de segurança e manter a documentação atualizada à medida que a infraestrutura evolui.



## Recursos Adicionais



[Documentação do Terraform](https://developer.hashicorp.com/terraform/docs)

[Repositório ofical do terraform](https://github.com/hashicorp/terraform/tree/main)


## Suporte



- Se você encontrar problemas ou tiver dúvidas, entre em contato com a equipe de operações de infraestrutura ou crie um problema (issue) neste repositório.