module.exports = {
  content: [
    // Căi din proiect pentru Solidus Admin
    "./app/views/solidus_admin/**/*.{html,erb}",
    "./app/helpers/solidus_admin/**/*.rb",
    "./app/assets/stylesheets/solidus_admin/**/*.css",
    "./app/components/solidus_admin/**/*.{html,erb,rb}",
    // Calea ta personalizată
    "./app/components/admin/**/*.{html,erb,rb}",
    // Calea gem-ului (opțional, dacă Solidus Admin injectează view-uri)
    "C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_admin-0.4.0/app/views/**/*.{html,erb}",
    "C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_admin-0.4.0/app/components/**/*"
  ],
  theme: {
    extend: {
      fontFamily: { sans: ["Inter var", "sans-serif"] },
      colors: { "solidus-red": "#ef3023" /* etc. din gem */ }
    }
  },
  plugins: [
    require("@tailwindcss/forms")({ strategy: "class" }),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries")
  ]
};