#!/usr/bin/env bash
# exit on error
set -o errexit

# Instalare gemuri și pachete JS
bundle install
yarn install

# Compilează Tailwind într-un fișier compatibil Sprockets
yarn tailwindcss -i ./app/assets/stylesheets/application.tailwind.css -o ./app/assets/builds/application.css --minify

# Compilează asset-urile și curăță
bundle exec rake assets:precompile
bundle exec rake assets:clean

# Migrează baza de date
bundle exec rake db:migrate
