import React from "react";
import { NavLink } from "react-router-dom";

export type Props = {
  title: string;
  children: React.ReactNode;
};

export default function Layout({ title, children }: Props) {
  return (
    <div>
      <header>
        <h1>{title}</h1>
        <nav>
          <NavLink to="/">Home</NavLink>
          <NavLink to="/about">About</NavLink>
        </nav>
      </header>
      <main>{children}</main>
    </div>
  );
}
