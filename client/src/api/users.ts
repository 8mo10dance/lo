import apiRequest from './base'
import { User } from '../types'

export async function getUsers(): Promise<User[]> {
  const data = await apiRequest<{ users: User[] }>('/api/v1/users')

  return data.users
}
