<!-- Faça o clone do repositório do software com o comando “git clone https://github.com/abrantedevops/Nextcloud_in_service.git” entre dentro da pasta “Nextcloud_in_service”, instale o docker e o docker-compose a partir do script install_docker.sh, entre dentro do diretório “:~/Nextcloud_in_service/LAN$”, localizado em  renomeie o arquivo .env.example para .env e verifique se a variável está conforme a imagem abaixo. O passo a passo dos comandos está logo em seguida:

thiago@server-nextCloud:~$ git clone https://github.com/abrantedevops/Nextcloud_in_service.git
thiago@server-nextCloud:~$ cd Nextcloud_in_service/
thiago@server-nextCloud:~/Nextcloud_in_service$ chmod +x install_docker.sh
thiago@server-nextCloud:~/Nextcloud_in_service$ ./install_docker.sh
thiago@server-nextCloud:~/Nextcloud_in_service$ cd LAN/
thiago@server-nextCloud:~/Nextcloud_in_service/LAN$ mv .env.example .env
thiago@server-nextCloud:~/Nextcloud_in_service/LAN$ nano .env

 

Em seguida, digite no terminal: “sudo docker-compose up -d” e aguarde o provisionamento da aplicação. -->
