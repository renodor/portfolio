const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        'dark-gray': '#323232',
        'flashy-green': '#61e786',
      },
      fontFamily: {
        body: ['Montserrat', 'Helvetica', 'sans-serif'],
        heading: ['Rubik', 'Helvetica', 'sans-serif']
      },
      dropShadow: {
        'flashy-green': '4px 2px 0px #61e786',
        'flashy-green-sm': '3px 2px 0px #61e786'
      },
      boxShadow: {
        'flashy-green': '6px 4px 1px #61e786',
        'flashy-dark': '6px 4px 1px #323232',
      },
      transitionDuration: {
        '250': '250ms'
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
