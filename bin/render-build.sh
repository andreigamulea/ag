#!/usr/bin/env bash
set -o errexit

echo "🧹 Curățare cache vechi..."
rm -rf tmp/cache

echo "📦 Instalez gem-uri..."
bundle install

echo "📦 Instalez pachete JS..."
yarn install --frozen-lockfile

echo "📁 Creez directorul pentru fișiere Active Storage..."
mkdir -p /var/data/storage

echo "🎨 Compilez Tailwind + CSS personalizat..."
yarn tailwindcss -c tailwind.config.js -i ./app/assets/stylesheets/application.tailwind.css -o ./app/assets/builds/application.css --minify

echo "🧱 Precompilez assets..."
bundle exec rake assets:precompile

echo "🗄 Migrez baza de date..."
bundle exec rake db:migrate

echo "✅ Build finalizat cu succes!"
