/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      screens: {
        xs: "390px",
        mac: "1440px",
        hd: "1536px",
        fullhd: "1920px",
        "2k": "2560px",
        "4k": "3840px",
      },
      fontFamily: {
        Nobile: ["Nobile", "sans-serif"],
        Muli: ["Muli", "sans-serif"],
        Merriweather: ["Merriweather", "serif"],
        montserrat: ["Montserrat", "sans-serif"],
      },
      colors: {
        greenPsique: "#75B781",
        darkGreen: "#2A352F",
        dark: "#151515",
      },
    },
  },
  plugins: [],
};
