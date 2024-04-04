import React from "react"
import { createRoot } from "react-dom/client"

const f = (x: number) => x + 1

document.addEventListener('DOMContentLoaded', () => {
  const app = document.getElementById('app')
  if (app === null) return

  const root = createRoot(app)
  root.render(<App />)
})

function App() {
  return <div>{`output: ${f(10)}`}</div>
}
