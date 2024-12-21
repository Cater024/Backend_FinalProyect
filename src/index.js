//lenguaje de servidor
const dotenv = require("dotenv")
dotenv.config()

const express = require("express")
const router = require("./routes") //importar router
const cors = require("cors") 

const app = express()
app.use(cors())
app.use(express.json())
app.use(router) //pasar el router importado a la app

//crear recurson

//app.get() //obtener datos, toda peticion hecha desde el navegador es tipo get
//app.post() //crear registros
//app.put() //actualizar registros
//app.patch() //actualizar registros
//app.delete() //eliminar registros

app.listen(3000, () => {
  console.log("Server is running on port 3000")
})
//creamos un servidor de backend (inicio de API)
