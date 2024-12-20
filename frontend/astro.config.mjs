import { defineConfig } from "astro/config";
import react from "@astrojs/react";
import tailwind from "@astrojs/tailwind";
import node from "@astrojs/node";

export default defineConfig({
  integrations: [react(), tailwind()],
  output: "server",
  adapter: node({ mode: "standalone" }),
  server: {
    host: true,
    port: 4321,
  },
  vite: {
    server: {
      watch: {
        usePolling: true,
        interval: 1000,
      },
    },
  },
});
