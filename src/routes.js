const express = require("express")
const yup = require("yup")
const connection = require("./db") //importar base de datos

const router = express.Router() //un enrutador, para que entienda que aca tenemos la ruta

const schema = yup.object().shape({
  //forzar que los datos que lleguen sean los indicados
  nombre: yup.string().required("El nombre es obligatorio"),
  categoria: yup.string().required("La categoria es obligatoria"),
  descripcion: yup.string().required("La descripción es obligatoria"),
  precio: yup.number().typeError("El precio debe ser un número válido").required("El precio es obligatorio").positive("El precio debe ser positivo"),
  imagen: yup.string().required("La imagen es obligatoria"),
  
})//validar los datos que llegan con la estructura y reglas definidas en el schema


router.get("/productos", function (request, response) {
  let {page = 1, perPage = 8} = request.query

  page = parseInt(page)
  perPage = parseInt(perPage)

  connection.query("SELECT * FROM productos ORDER BY id DESC LIMIT ?, ?", [(page - 1) * perPage, perPage],
    function (error, result) {
    if (error) {
      console.log("Error fetching productos", error)
    } else {
      response.json(result)
    }
  })
})

router.post("/producto", async function (request, response) {
  
  const datos = request.body
  console.log(datos)

  //try {}catch(error){} para controlar los errores durante la ejecucion del codigo, controla la excepcion.
  try {
    const result = await schema.validate(datos)

    //Agregar un producto a la base de datos
    const query =
      "INSERT INTO productos(nombre,  categoria, descripcion, precio, imagen) VALUES (?, ?, ?, ?, ?)"

    connection.execute(query, Object.values(datos), function (error, result) {
      if (error) {
        response.status(400).json({
          message: "Error al guardar al producto",
          error: error,
        })
        console.log("Error fetching producto", error)
      } else {
        response.json({
          message: "Producto agregado con exito",
          data: result,
        })
      }
    })
  } catch (error) {
    response.status(400).json({
      message: error.message
    })
  }
})

router.get("/producto/:id", function (request, response){
  const { id } = request.params
  const query = "SELECT * FROM productos WHERE id = ?"
  connection.query(query, [id], function (error, result) {
    if (error) {
      response.status(400).jason({
        message: "Error al buscar al producto",
        error: error
      })
    } else {
      if (result.length > 0) {
        response.json(result[0])
      } else {
        response.status(404).json({
          message: "Producto no encontrado",
        })
      }
    }
  })
})

// Actualización de un producto específico en la base de datos
router.put("/producto/:id", async function (request, response) {
  const data = request.body
  const { id } = request.params

  //const query = "UPDATE tabla SET ? WHERE id = ?"
  try {
    await schema.validate(data) // validamos que el objeto cumpla con el esquema

    const query =
      "UPDATE productos SET nombre = ?, categoria = ?, descripcion = ?, precio = ?, imagen = ? WHERE id = ?"
  
    connection.execute(
      query,
      Object.values(data).concat(id),
      function (error, result) {
        if (error) {
          response.status(400).json({
            message: "Error al actualizar el producto",
            error,
          })
        } else {
          response.json({
            message: "Producto actualizado",
            data: result,
          })
        }
      },
    )
  } catch (error) {
    response.status(400).json({
      message: error.message,
    })
  }
}) 

router.delete("/producto/:id", function(request, response){
  const { id } = request.params
  const query = "DELETE FROM productos WHERE id = ?"

  connection.execute(query, [id], function (error, result) {
    if (error) {
      response.status(400).json({
        message: "Error al eliminar el producto",
        error,
      })
    } else {
      response.json({
        message: "Producto eliminado correctamente",
        data: result,
      })
    }
  })
})

module.exports = router //para poder exportar


//desde 200 a 299 - ok
//desde 300 hasta 399 - redirecciones
//desde 400 hasta 499 - errores del cliente
//desde 500 hasta 599 - errores del servidor