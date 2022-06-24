class Controller{
  constructor(connection) {
    this._connection = connection;
  }

  cursos(callback){
    this._connection.query('select * from cursos', callback)
  }

  salvar(data, saveName,callback){
    this._connection.query(`insert into usuarios (nome, tipo, curso, ra, senha, cpf, email, celular, nascimento, foto) values ('${data.nome}', '${data.tipo}', '${data.curso}', '${data.ra}', '${data.senha}', '${data.cpf}', '${data.email}', '${data.celular}', '${data.nascimento}', '${saveName}')`, callback)
  }

  consultar(data, callback){
    this._connection.query(`select * from usuarios where email = '${data.email}' and senha ='${data.senha}'` , callback)
  }

  carregar(id, callback){
    this._connection.query(`select * from usuarios where id = ${id}`, callback)
  }
  
  presenca(id, ano, mes, dia, callback){
    this._connection.query(`select * from presenca where id = ${id} and data like '${ano}-0${mes}-${dia}%';`, callback)
  }

  marcarPresenca(id, callback){
    this._connection.query(`insert into presenca (id) value(${id})`, callback)
  }

  historico(id, callback){
    this._connection.query(`select * from presenca where id = ${id} order by data desc;`, callback)
  }

  alterar(id, callback){
    this._connection.query(`select * from usuarios where id = ${id};`, callback)
  }

  salvarEdit(id, data, callback){
    this._connection.query(`update usuarios set nome = '${data.nome}', email = '${data.email}', celular = '${data.celular}', cpf = '${data.cpf}' where id = ${id}`, callback)
  }

  salvarSenha(id, data, callback){
    this._connection.query(`update usuarios set senha = '${data.novaSenha}' where id = ${id} `, callback)
  }

  presenca(dia, mes, ano, callback){
    this._connection.query(`select * from presenca where data like '${ano}-0${mes}-${dia}%'`, callback)
  }

}


module.exports = () => Controller
 