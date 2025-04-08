Rake::Task["css:install"].clear
Rake::Task["css:build"].clear
Rake::Task["tailwindcss:build"].clear # Dezactivează task-ul tailwindcss-rails

namespace :css do
  task :install do
    puts "Sărim peste css:install, dependențele sunt deja instalate."
  end

  task :build do
    puts "Rulăm manual yarn build:css..."
    system "yarn build:css" || raise("Eroare la rularea yarn build:css")
  end
end

namespace :tailwindcss do
  task :build do
    puts "Sărim peste tailwindcss:build, folosim cssbundling-rails."
  end
end