# Projeto-Interdisciplinar


Projeto interdisciplinar IV


Esse projeto tem como objetivo a exposição dos conhecimentos adquiridos no 5º semestre de Análise e Desenvolvimento de Sistemas.

Tema: Automatização do processo de chamada na Faculdade.
Tendo em vista o processo de marcar presença manualmente através de papel e caneta, resolvi desenvolver esse projeto em NodeJS para gerenciar isso.



O projeto em si é bem simples e os processos dentro dele ainda mais. O aluno tem o simples papel de logar em sua conta(ou cadastrar caso ainda não tenha conta).

![image](https://user-images.githubusercontent.com/101595139/175697787-dd6a1ce1-fece-495c-997f-8369427065d7.png)



![image](https://user-images.githubusercontent.com/101595139/175697561-44843d0e-c8b8-4bf6-a73e-0bf64aac632d.png)


Depois de logado algumas informações serão carregadas: 
Caso o aluno ainda não tenha registrado sua presença uma notificação irá aparecer: 
![image](https://user-images.githubusercontent.com/101595139/175698633-298d1ba3-8bf1-4a09-8c28-af6743de29f9.png)




Depois de marcar a presença a notificação sairá e o registro de presença é efetuado:
![image](https://user-images.githubusercontent.com/101595139/175698831-aaa92839-2dac-43d9-bc86-2605e24b6941.png)
Registro de presença:
![image](https://user-images.githubusercontent.com/101595139/175698971-00d3bdd4-775d-4358-ab30-3c440e9b4985.png)



Configuração de conta também estão disponíveis:

![image](https://user-images.githubusercontent.com/101595139/175699189-14e500b1-0895-444d-9152-87d9e9e4684d.png)
![image](https://user-images.githubusercontent.com/101595139/175699296-1f89028c-6d5c-4f96-a656-aec2841cb549.png)




As funcionalidades são essas para usuários normais(alunos), mas também temos a opção de entrar como root para receber dados de presença dos alunos.

![image](https://user-images.githubusercontent.com/101595139/175699687-ad437719-8ea0-4681-a4c9-f6b9e83fb2fe.png)

Se pode notar que o 'Histórico' do aluno se transforma em 'Relatório' para o Root, que pode acessar e obter os dados de todas as presenças marcadas naquele dia pelos
alunos.

A idéia é que a aplicação se integre com outras, então para isso um relatório em JSON com os dados dos alunos presentes na data pode ser retirado pelo admin.

![image](https://user-images.githubusercontent.com/101595139/176012644-1f8d13ad-94e8-4db0-9043-c1e2ce32ef1e.png)


![image](https://user-images.githubusercontent.com/101595139/176012717-8e826cb1-c042-4fba-b696-78574c0e94a6.png)

O arquivo JSON é formado com o nome e presenças referentes ao dia em que o relatório foi formado.

É possível ter uma noçãa a partir do código: 
![image](https://user-images.githubusercontent.com/101595139/176014076-364fc5d9-efcb-4e74-91df-2fd8f20a2667.png)
![image](https://user-images.githubusercontent.com/101595139/176014180-8d5ea979-0b36-4c35-8e53-a72f5e292a17.png)


O interessante é que o módulo 'fs' verifica a existencia de um arquivo para altera-lo, se esse arquivo não existir ele não retorna um erro, mas sim cria um novo arquivo e já fornece os dados em JSON para ele.





Tecnologias utilizadas :
NODEJS
Banco de dados relacional "Mysql"
Express


Módulos importantes:
Express-fileUpload para realocação de fotos enviadas(são direcionadas para pasta uploads já com o nome hasheado)
uuid para criptografia
ejs -  template engine para realizar a lógica dentro da aplicação
fs - criação e manipulação de arquivos.
