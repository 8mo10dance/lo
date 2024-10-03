import React from "react";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import Home from "./pages/Home";
import About from "./pages/About";
import UserNew from "./pages/users/New";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Home />,
  },
  {
    path: "/about",
    element: <About />,
  },
  {
    path: "/users/new",
    element: <UserNew />,
  },
]);

export default function App() {
  return (
    <React.StrictMode>
      <RouterProvider router={router} />
    </React.StrictMode>
  );
}
