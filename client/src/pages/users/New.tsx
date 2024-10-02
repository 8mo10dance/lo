import React from "react";

import Layout from "../../components/Layout";

export default function New() {
  return (
    <Layout title="ユーザー登録">
      <form>
        <div>
          <label>
            Name:
            <input name="user.name" type="text" />
          </label>
        </div>
        <div>
          <label>
            Email:
            <input name="user.email" type="email" />
          </label>
        </div>
        <div>
          <input type="submit" value="登録" />
        </div>
      </form>
    </Layout>
  );
}
