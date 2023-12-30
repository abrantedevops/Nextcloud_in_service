<h1 align="center">Servidor Nextcloud</h1>

<p align="center">
    <img src="./Nextcloud_Logo.svg">
</p>

<p align="justify"> 
O NextCloud é um software de código aberto que permite criar um servidor de arquivos na nuvem, com ele é possível criar usuários, grupos, compartilhar arquivos e pastas, além de ter um calendário, agenda de contatos, editor de texto, planilhas, apresentações e muito mais. O NextCloud é uma alternativa ao Google Drive, Dropbox e OneDrive, porém com a vantagem de ser um software livre e de código aberto, ou seja, você pode instalar em seu próprio servidor e ter total controle sobre seus dados.
</p>

## LAN

<p align="justify">
A versão LAN pode ser instalada em um servidor local, ou seja, em sua própria rede. Como forma de exemplo, foi configurado um domínio local chamado "www.meudominio.edu.br", que poderia ser configurado no arquivo /etc/hosts ou através de um servidor DNS local, que neste caso foi utilizado o BIND9. Também nesta versão o certificado SSL autoassinado foi gerado diretamente na imagem através do OpenSSL, dessa forma, quando o container de nome "cert" for levantado, o certificado gerado será encaminhado para ser utilizado pelo proxy reverso através do volume montado pelo nginx ("./certs:/etc/nginx/certs:"). Todos os arquivos utilizados nesta versão estão disponíveis no diretório ./LAN/.docker. </p>

<p align="justify">Pré-requisitos:</p>

- Necessita ter o docker instalado, para isso execute o script install_docker.sh
```bash
chmod +x install_docker.sh
./install_docker.sh
```

<p align="justify"> Execução: </p>

```bash
git clone https://github.com/abrantedevops/Nextcloud_in_service.git
cd Nextcloud_in_service/LAN
mv .env.example .env
nano .env # Altere as variáveis de acordo com a sua necessidade
sudo docker-compose up -d # Após isso a aplicação estará sendo iniciada e espera-se que os containers alcancem o estado de “done”. O comando “sudo docker logs app" exibe as etapas de instalação do Nextcloud, logo, a aplicação só estará disponível no momento em que o status sair de “Starting nextcloud installation” para “Initializing finished”. È válido sempre monitorar estes logs.

Acesse o domínio informado para acessar a aplicação.
Para excluir todo o processo, execute o comando “sudo docker-compose down”.
```
<hr>

## WAN

<p align="justify"> Para a versão WAN o certificado SSL é gerado através do Let’s Encrypt, para isso é necessário ter um domínio registrado e configurado apontando em um IP público. Todos os arquivos utilizados nesta versão estão disponíveis no diretório ./WAN/.docker. </p>

<p align="justify"> Execução: </p>

```bash
git clone https://github.com/abrantedevops/Nextcloud_in_service.git
cd Nextcloud_in_service/WAN
mv .env.example .env
nano .env # Altere as variáveis de acordo com a sua necessidade
sudo docker-compose up -d # Após isso a aplicação estará sendo iniciada e espera-se que os containers alcancem o estado de “done”. O comando “sudo docker logs app" exibe as etapas de instalação do Nextcloud, logo, a aplicação só estará disponível no momento em que o status sair de “Starting nextcloud installation” para “Initializing finished”. È válido sempre monitorar estes logs.

Acesse o domínio informado para acessar a aplicação.
Para excluir todo o processo, execute o comando “sudo docker-compose down”.
```
