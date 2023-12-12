openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /app/certs/www.meudominio.edu.br.key \
    -out /app/certs/www.meudominio.edu.br.crt \
    -subj "/C=BR/ST=PB/L=PB/O=Abranteme Corp/OU=Departamento de Desenvolvimento/CN=abranteme.com.br"