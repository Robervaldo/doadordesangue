doadordesangue
==============

Repositório criado para atualizar o sistema CNDS - Cadastro Nacional de Doadores de Sangue

O CNDS é um projeto sem fins lucrativo com o intuito em ajudar pessoas a encontrar doadores de sangue.

Vamos refazer o sistema em Ruby on Rails com AngularJS.

1º Módulos do sistema:
1.1- Cadastro de Doador
1.2- Solicitação de Sangue
1.3- Notificação

#Cadastro de Doador
 - nome:String (obrigatório)
 - dtNascimento:datetime (obrigatório)
 - tipoSanguineo:string (obrigatório)
 - genero:string (obrigatório)
 - estado:string (obrigatório)
 - cidade:string (obrigatório)
 - emailPrincipal:string (obrigatório)
 - emailAlternativo:string (opicional)

Validação:
 - A dtNascimento não pode ser menor que 16 anos ou maior que 69 anos.
 - O emailPrincipal deve ser único na base.

O sistema já está funcionando.
http://doadordesangue.com.br/

Nassa página no facebook.
https://www.facebook.com/cnds.doadordesangue
