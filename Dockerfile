FROM drupal:7

# Install drush by using composer
ENV COMPOSER_HOME /root/composer
ENV COMPOSER_VERSION master

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require drush/drush:7.* \
    && ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush \
    && drush cache-clear drush