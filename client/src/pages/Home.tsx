import React from "react";

import Layout from "../components/Layout";
import UserListComponent from "../containers/UserList";

export default function Home() {
  return (
    <Layout title="Home">
      <UserListComponent />
    </Layout>
  );
}
