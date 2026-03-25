# GLPI 11 no Railway

Este repositório sobe uma instância do GLPI 11 pronta para testes de API.

## Deploy no Railway

1. Crie um novo projeto no Railway
2. Deploy from GitHub
3. Selecione este repositório
4. Adicione um serviço PostgreSQL
5. Abra a URL gerada

## Login padrão

usuario: glpi
senha: glpi

## API

Após instalar:

Configurar → Geral → API

Ativar:
- Enable Rest API
- Enable login with user token

Endpoint:

/apirest.php

Exemplo:

curl https://seu-app/apirest.php/initSession

