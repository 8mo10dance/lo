import { User } from '../types'
import { S3_API_ROOT } from '../const'

export async function getUsers(): Promise<User[]> {
  const response = await fetch(`${S3_API_ROOT}/users.json`)
  const users = await response.json()

  return users
}
