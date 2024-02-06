/** @type {import('tailwindcss').Config} */
module.exports = {
  mode: "all",
  content: [
    "./src/**/*.{rs,html,css}",
    "./dist/**/*.html",
    "./public/*.{css,html}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
};
