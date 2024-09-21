/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      screens: {
        xxs: "375px",
        xs: "390px",
        sm: "640px",
        xmd: "720px",
        md: "768px",
        lg: "1024px",
        xl: "1280px",
        xhd: "1440px",
        hd: "1536px",
        fullhd: "1920px",
        qhd: "2560px",
        ultra: "3840px",
      },
    },
  },
  plugins: [],
};
