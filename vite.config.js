import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "vite";
import elmPlugin from "vite-plugin-elm";

export default defineConfig({
  plugins: [elmPlugin(), tailwindcss()],
});
