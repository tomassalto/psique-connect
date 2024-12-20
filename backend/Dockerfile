FROM php:8.2-fpm

# Instala extensiones necesarias para Laravel
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    git \
    curl \
    libpq-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libonig-dev \
    libzip-dev \
    && docker-php-ext-install \
    pdo \
    pdo_mysql \
    mbstring \
    zip \
    exif \
    pcntl \
    bcmath \
    gd

# Instala Composer
COPY --from=composer:2.5 /usr/bin/composer /usr/bin/composer

# Establece el directorio de trabajo
WORKDIR /var/www/html

# Copia los archivos del backend
COPY . .

# Ajusta permisos de Laravel
RUN chmod -R 775 storage bootstrap/cache

# Instala dependencias de Composer
RUN composer install --no-dev --optimize-autoloader

# Expone el puerto 9000 para PHP-FPM
EXPOSE 9000

# Comando por defecto para PHP-FPM
CMD ["php-fpm"]