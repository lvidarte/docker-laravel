# docker-laravel-nginx

## Build

    docker build -t laravel-nginx .

## Run

    mkdir app

    docker run --rm -p 8000:80 -v $(pwd)/app:/var/www --name laravel laravel-nginx

## Install laravel

    docker exec -it laravel composer create-project laravel/laravel app

    sudo chown -R $USER:www-data app

    sudo chmod -R 775 app/storage

## Logs

    docker exec -it laravel bash -c 'tail -f /var/log/nginx/*.log'

## Test installation

    $> curl -s localhost:8000 | grep -i 'laravel 5'
        <div class="title">Laravel 5</div>

## Testing

    cd app

    vendor/bin/phpunit
