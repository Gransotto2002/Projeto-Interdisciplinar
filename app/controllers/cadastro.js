module.exports.solicitar =  (application, req, res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);

  db_controller.cursos((error, result) => {
    res.render('cadastro', {cursos : result})
  })
}

module.exports.salvar = (application, req, res) => {
  var {v4: uuidv4} = require('uuid')
  
  let data = req.body
  let img = req.files.foto
  let nome = uuidv4(req.files.foto.name)
  let ext = req.files.foto.mimetype.split('/')[1]
  img.mv(`./app/uploads/${nome}.${ext}`)
  let saveName = `${nome}.${ext}`
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  
  db_controller.salvar(data, saveName, (error, result) => {
    let aviso 
    if(!error){
      aviso = 'Cadastro efetuado com sucesso!'
      res.redirect('/')
    }
  })

}