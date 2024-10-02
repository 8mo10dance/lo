import React from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";

import Layout from "../../components/Layout";

const schema = z.object({
  user: z.object({
    name: z.string().min(1),
    email: z.string().min(1).email(),
  }),
});

type UserFormType = z.infer<typeof schema>;

export default function New() {
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<UserFormType>({
    resolver: zodResolver(schema),
  });

  return (
    <Layout title="ユーザー登録">
      <form noValidate onSubmit={handleSubmit((values) => console.log(values))}>
        <div>
          <label>
            Name:
            <input type="text" {...register("user.name")} />
          </label>
          {errors.user?.name && <p>{errors.user?.name?.message}</p>}
        </div>
        <div>
          <label>
            Email:
            <input type="email" {...register("user.email")} />
          </label>
          {errors.user?.email && <p>{errors.user?.email?.message}</p>}
        </div>
        <div>
          <input type="submit" value="登録" />
        </div>
      </form>
    </Layout>
  );
}
