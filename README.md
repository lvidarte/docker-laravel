# docker-laravel-nginx

## Build

    docker build -t docker-laravel-nginx .

## Run

    docker run --rm -p 8000:80 -v $(pwd):/var/www/laravel --name laravel-nginx docker-laravel-nginx
