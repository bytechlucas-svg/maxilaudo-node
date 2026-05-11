const express = require('express')
const cors = require('cors')

const app = express()

app.use(cors())

app.get('/script.js', (req, res) => {

    res.setHeader(
        'Content-Type',
        'application/javascript'
    )

    res.send(`

        console.log('Node conectado na Nuvemshop')

        document.body.style.background = '#111'

    `)

})

app.listen(3000, () => {

    console.log('Servidor rodando')

})