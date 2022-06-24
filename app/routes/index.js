module.exports = application => {
  application.get('/', (req, res) => {
    res.render('index',  {aviso: ''})
  })

  application.get('/home', (req, res) => {
    res.render('dashboard')
  })

}