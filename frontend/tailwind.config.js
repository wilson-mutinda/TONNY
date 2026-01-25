/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Poppins', 'ui-sans-serif', 'system-ui']
      },
      colors: {
        'tm-gray': '#f1f2f2',
        'tm-red': '#ed1c24',
        'tm-black': '#231f20'
      }
    },
  },
  plugins: [
    function ({ addUtilities }) {
      addUtilities({
        '.no-select': {
          'user-select': 'none',
          '-webkit-user-select': 'none',
          '-moz-user-select': 'none',
          '-ms-user-select': 'none',
        },
        '.no-drag': {
          '-webkit-user-drag': 'none',
          'user-drag': 'none',
        }
      })
    }
  ],
}
