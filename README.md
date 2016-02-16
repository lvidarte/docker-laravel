# docker-laravel-nginx

## Build

    docker build -t laravel-nginx .

## Run

    # Set www-data group for all files in lavarel root dir
    sudo chgrp -R www-data .

    # Set writable by www-data the storage dir
    sudo chmod -R 775 storage

    # Run docker in your laravel root dir
    docker run --rm -p 8000:80 -v $(pwd):/var/www/laravel laravel-nginx
