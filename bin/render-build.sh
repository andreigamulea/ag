#!/usr/bin/env bash
set -o errexit

bundle install
yarn install

yarn tailwindcss -c tailwind.config.js -i ./app/assets/stylesheets/application.tailwind.css -o ./app/assets/builds/application.css --minify

bundle exec rake assets:precompile
bundle exec rake db:migrate
