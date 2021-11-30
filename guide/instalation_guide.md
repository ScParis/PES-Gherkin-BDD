# Configuração Robot Framework

Comandos para instalação do robotframework

**Biblioteca principal:**

- https://robotframework.org/
- https://github.com/robotframework/robotframework
- https://github.com/robotframework/robotframework/blob/master/INSTALL.rst

**Guia de usuário:**

- http://robotframework.org/robotframework/#user-guide	

### Instalação

Requisitos Python >=3.7, e pip instalados

```sh
pip install -U pip # Atualizar pip se necessário
pip install robotframework

```

**Browser Library**
Documentação: 
- https://marketsquare.github.io/robotframework-browser/Browser.html
- https://robotframework-browser.org/
```sh
pip install robotframework-browser
rfbrowser init
```

**NodeJs - Playwright**
```sh
echo "deb [arch=amd64] https://deb.nodesource.com/node_14.x focal main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-key adv --recv-keys --keyserver hkps://keyserver.ubuntu.com:443 1655A0AB68576280
sudo apt update
sudo apt full-upgrade
```
Como a instalação do Docker dos ambientes locais cria uma alias para node dentro das pastas do projeto, é possível executar o segunite comando para retirar o alias para o nodejs em docker:
```sh
rm -rf ~/.local/bin/node ~/.local/bin/npm ~/.local/bin/yarn
```
Biblioteca adicional:
```sh
pip install robotframework-playwright>=0.1.0
```

**DiffLibrary**
DiffLibrary é uma biblioteca de teste do Robot Framework que fornecerá funcionalidade de palavra-chave para comparar dois arquivos.
Documentação: https://marketsquare.github.io/robotframework-difflibrary/
```sh
pip install robotframework-difflibrary
```


**Faker**
Documentação: https://guykisel.github.io/robotframework-faker/
```sh
pip install robotframework-faker
```

**RequestsLibrary (API)**
```sh
pip install robotframework-requests
```

**Drivers para navegadores**

Geckodriver, Para que o robot acesse o FireFox
```sh
sudo apt install firefox-geckodriver
```
**Chrome (chromium)**
Para que o robot acesse o google chrome

***- IMPORTANTE: instalar a mesma versão em que seu google chrome está!***
```sh
sudo apt install chromiun 
```
---
Para confirmar quais libs estão instaladas, digite no terminal:
```sh
pip freeze | fgrep robot
```
**Backup das bilbliotecas utilizadas**
Será salvo no arquivo "requirements.txt", todas as bibliotecas instaladas com o robot

```sh
pip freeze | fgrep robot > requirements.txt
```

**Instalação a apartir do arquivo "requirements.txt"**
Para rodar esse comando, é importanete que o terminal esteja dentro da pasta que o arquivo foi salvo ou, se preferir, mova o arquivo para pasta 'home'.

https://github.com/crmpiperun/piperun-tests/blob/master/requirements.txt

```sh
pip install -r requirements.txt
```