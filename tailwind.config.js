module.exports = {
  mode: 'jit',
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        brandGolden: "#b39d24",
        brandActive: "#b39d24"
      },
      fontFamily: {
        anouche: ["Spartan", "sans-serif"]
      }
    },
  }
}
