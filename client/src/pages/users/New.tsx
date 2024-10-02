import React from "react";
import { useForm } from "react-hook-form";

import Layout from "../../components/Layout";

export default function New() {
  const { register, handleSubmit } = useForm();

  return (
    <Layout title="ユーザー登録">
      <form onSubmit={handleSubmit((values) => console.log(values))}>
        <div>
          <label>
            Name:
            <input type="text" {...register("user.name")} />
          </label>
        </div>
        <div>
          <label>
            Email:
            <input type="email" {...register("user.email")} />
          </label>
        </div>
        <div>
          <input type="submit" value="登録" />
        </div>
      </form>
    </Layout>
  );
}
