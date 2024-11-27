FROM composer
RUN composer global require "laravel/lumen-installer"
ENV PATH=$PATH:/tmp/vendor/bin

#Add Node.js and npm for frontend builds
RUN apk add --no-cache nodejs npm
