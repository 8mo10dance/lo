export default async function apiRequest<A>(path: string): Promise<A> {
  const response = await fetch(path);
  const data = await response.json();

  return data;
}
