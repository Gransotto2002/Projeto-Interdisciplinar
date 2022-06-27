const { application } = require('express');

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
        res.render('dashboard', {data : result, admin : false, presenca: reslt}) 
      })
    }
  })
}


module.exports.marcarPresenca = (application, req ,res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id

  db_controller.carregar(id, (error, result) => {
    let data = result
    db_controller.marcarPresenca(id, data, (err, rest) => {
      res.redirect(`/user?id=${id}`)
    })
  })

}


module.exports.historico = (application, req ,res) => {
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let id = req.query.id
  let date = new Date
  let dia = date.getDate()
  let mes = date.getMonth() +1 
  let ano = date.getFullYear()

  db_controller.carregar(id, (error, result) => {
    if(result[0].tipo === 3){
      db_controller.relatorio(ano, mes, dia, (err, rest) => {
        res.render('historico', {presenca: rest, id, admin: true, aviso: ''})
      })
    }else{
      db_controller.historico(id, (error, result) => {
        res.render('historico', {presenca : result, id, admin: false, aviso: ''})
      })
    }
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

module.exports.extrairRelatorio = (application, req ,res) => {
  let fs = require('fs')
  let connection = application.config.db_connect();
  let db_controller = new application.app.models.DBController(connection);
  let date = new Date
  let dia = date.getDate()
  let mes = date.getMonth() +1 
  let ano = date.getFullYear()
  let id = req.query.id

  db_controller.relatorio(ano, mes, dia, (error, result) => {
    let user = []
    for (let i = 0; i < result.length; i++) {
      let users = {
        nome: `${result[i].nome}`,
        ra: `${result[i].ra}`
      }

      user.push(users)
    }
    fs.writeFile(`./app/data/relatório-${ano}-0${mes}-${dia}.json`, JSON.stringify(user) , (err) => {
      if(err){
        console.log(err);
      }
      res.render('historico', {admin: true, presenca: result, id, aviso: 'Relatório retirado com sucesso !'})
    })
  })
}


module.exports.verRelatorios = (application, req, res) => {
  let id = req.query.id
  res.render('relatorio-dia', {id : id, presenca: '', erro: '', data: ''})
}

module.exports.exibirRelatorio = (application, req, res) => {
  let fs = require('fs')
  let id = req.query.id
  let data = req.body.data

  if(fs.existsSync(`./app/data/relatório-${data}.json`)){

    let json = fs.readFileSync(`./app/data/relatório-${data}.json`)
    let info = JSON.parse(json)
    res.render('relatorio-dia', {presenca : info, id, admin : true, data, erro: ''})

  }else{

    let erros = 'Sem registros nessa data'
    res.render('relatorio-dia', {presenca : '', id, admin : true, data, erro: erros})

  }
}