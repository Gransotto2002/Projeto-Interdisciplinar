module.exports.consulta = (application, req, res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let data = req.body

  db_controller.consultar(data, (error, result) => {
    if(result == undefined || result == ''){
      res.render('index', {aviso : 'Email ou senha inválidos'})
    }else{
      if (result[0].tipo == 3) {
        res.redirect(`/user/?id=${result[0].id}`)
      }else{
        res.redirect(`/user/?id=${result[0].id}`)
      }
    }
  })
}

module.exports.carregar = (application, req, res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id
  let date = new Date
  let dia = date.getDate()
  let mes = date.getMonth() +1 
  let ano = date.getFullYear()

  db_controller.carregar(id, (error, result) => {
    if (result[0].tipo === 3) {
      res.render('dashboard', {data : result, presenca: {} ,admin : true}) 
    }else{
      db_controller.presenca(id, ano, mes, dia, (err, reslt) => {
        res.render('dashboard', {data : result, admin : false ,presenca: reslt}) 
      })
    }
  })
}


module.exports.marcarPresenca = (application, req ,res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id 

  db_controller.marcarPresenca(id, (error, result) => {
    res.redirect(`/user?id=${id}`)
  })
}


module.exports.historico = (application, req ,res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id

  db_controller.historico(id, (error, result) => {
    res.render('historico', {presenca : result, id})
  })
} 


module.exports.alterar = (application, req, res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id 

  db_controller.alterar(id, (error, result) => {
    res.render('alterar', {info: result, data : id})
  })
}


module.exports.salvar = (application, req ,res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let data = req.body
  let id = req.query.id

  db_controller.salvarEdit(id, data, (error, result) => {
    console.log(error);
    res.redirect(`/user/?id=${id}`)
  })
}


module.exports.senha = (application, req, res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id
  
  db_controller.alterar(id, (error, result) => {
    res.render('senha', {info : result})
  })

}


module.exports.senhaSalvar = (application, req , res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id 
  let data = req.body

  db_controller.alterar(id, (error, result) => {
    if(data.senha == ''|| data.novaSenha == '' || data.novaSenhaC == ''){
      res.redirect(`/alterar/senha?id=${id}`)
    }else{
      if(data.novaSenha !== data.novaSenhaC){
        res.redirect(`/alterar/senha?id=${id}`)
      }
      if(result[0].senha === data.senha){
        db_controller.salvarSenha(id, data, (err, rest) => {
          res.redirect('/')
        })
      }else{
        res.redirect('/alterar/senha?id=${id}')
      }
    }
  })
}


/* Gerar Relatório */
module.exports.relatorio = (application, req, res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let date = new Date
  let dia = date.getDate()
  let mes = date.getMonth() +1 
  let ano = date.getFullYear()

  db_controller.relatorio = (dia, mes, ano, (error, result) => {
    console.log(result);
  })
}