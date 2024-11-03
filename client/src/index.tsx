import React from "react";
import { createRoot } from "react-dom/client";
import App from "./App";

document.addEventListener("DOMContentLoaded", () => {
  const app = document.getElementById("app");
  if (app === null) return;

  const root = createRoot(app);
  root.render(<App />);
});
