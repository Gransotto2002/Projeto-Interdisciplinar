module.exports = application => {
  application.post('/user', (req, res) => {
    application.app.controllers.admin.consulta(application, req, res)
  })

  application.get('/user', (req, res) => {
    application.app.controllers.admin.carregar(application, req, res)
  })

  application.get('/marcar/presenca', (req, res) => {
    application.app.controllers.admin.marcarPresenca(application, req, res)
  })

  application.get('/historico', (req, res) => {
    application.app.controllers.admin.historico(application, req, res)
  })

  application.get('/alterar/info', (req, res) => {
    application.app.controllers.admin.alterar(application, req, res)
  })

  application.post('/alteracao/salvar', (req, res) =>
    application.app.controllers.admin.salvar(application, req, res)
  )

  application.get('/alterar/senha', (req, res) => {
    application.app.controllers.admin.senha(application, req, res)
  })

  application.post('/alterar/senha/salvar', (req, res) => {
    application.app.controllers.admin.senhaSalvar(application, req, res)
  })

  application.get('/relatorio', (req, res) => {
    application.app.controllers.admin.relatorio(application, req, res)
  })

}