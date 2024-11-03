import React from "react";
import { User } from "../types";

export type Props = {
  users: User[];
};

export default function UserListComponent({ users }: Props) {
  return (
    <ul>
      {users.map((user) => (
        <li key={user.id}>{user.name}</li>
      ))}
    </ul>
  );
}
