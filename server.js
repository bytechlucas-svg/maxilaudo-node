const express = require('express')

const app = express()

app.get('/script.js', (req, res) => {

  res.type('application/javascript')

  res.send(`
    console.log('MAXILAUDO ONLINE')

    document.body.style.background = '#050505'
  `)

})

app.get('/', (req, res) => {
  res.send('Servidor online')
})

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
  console.log('Servidor rodando')
})