
## About New APP

Running the Application with Docker Compose

First of all copy the .env.example file and paste as .env file . Linux command below
### cp .env.example .env

Then run docker command as like below:

### docker-compose build app
### docker-compose up -d
### docker-compose exec app rm -rf vendor composer.lock
### docker-compose exec app composer install
### docker-compose exec app php artisan key:generate
### docker-compose exec app php artisan migrate

Now go to your browser and access your server’s domain name or IP address on port 8000:

http://server_domain_or_IP:8000


### NOTE: Must put frontend and backend in the same directory to run via docker

run without Docker command below
First of all copy the .env.example file and paste as .env file . Linux command below
### cp .env.example .env

Then run below commands: 

### rm -rf vendor composer.lock
### composer install
### php artisan key:generate
### php artisan migrate
### php artisan serve

Starting Laravel development server: http://127.0.0.1:8000