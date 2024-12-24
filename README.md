# Docker - NGINX with SSL and Reverse Proxy

### 1. Clone the Repository

Clone this repository to your local machine.

```bash
git clone https://github.com/threatofwar/nginx.git
cd nginx/
```

### 2. (Optional) To generate you own SSL Certificate
Generate private key without password
```bash
openssl genpkey -algorithm RSA -out ssl/example.key
```
Or  
Generate private key with password
```bash
openssl genpkey -algorithm RSA -out ssl/example.key -aes256
```

Generate Certificate Signing Request (CSR)
```bash
openssl req -new -key example.key -out ssl/example.csr
```

Generate the Self-Signed SSL Certificate
```bash
openssl x509 -req -in ssl/example.csr -signkey ssl/example.key -out ssl/example.crt -days 365
```

Verifiying the Self-Signed SSL Certificate
```bash
openssl x509 -in example.crt -text -noout
```

### Option 1: Build and Run the Docker Container Using Docker CLI
```bash
docker build -t nginx-ssl-reverse-proxy-container .
```
```bash
docker run -d -p 80:80 -p 443:443 nginx-ssl-reverse-proxy-container
```
### Option 2: Build and Run Using Docker Compose
```bash
docker compose up -d --build
```

## Access the host
### You should now be able to access the fqdn your_domain in your browser
```bash
your_domain
```
