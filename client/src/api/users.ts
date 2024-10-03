import { User } from '../types'

export async function getUsers(): Promise<User[]> {
  const response = await fetch('/api/v1/users')
  const data = await response.json()

  return data.users
}
