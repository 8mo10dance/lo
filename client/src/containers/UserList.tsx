import React, { useState, useEffect } from "react";
import { User } from "../types";
import { getUsers } from "../api/users";
import UserListComponent from "../components/UserList";

export default function UserListContainer() {
  const UserList = useUserList();

  return <UserListComponent users={UserList.users} />;
}

function useUserList() {
  const [users, setUsers] = useState<User[]>([]);

  const fetchUsers = async () => {
    const users = await getUsers();
    setUsers(users);
  };

  useEffect(() => {
    fetchUsers();
  }, []);

  return {
    users,
  };
}
