/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {
      colors: {
        primary: "#1e40af", // Blue for consistency
        secondary: "#f8fafc", // Light gray/white
      },
    },
  },
  plugins: [],
};
