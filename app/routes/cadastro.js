module.exports = application => {
  application.get('/cadastro', (req, res) => {
    application.app.controllers.cadastro.solicitar(application, req, res)
  })

  application.post('/salvar', (req ,res) => {
    application.app.controllers.cadastro.salvar(application, req, res)
  })

}