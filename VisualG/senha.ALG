Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/03/2023
Var
cadSenha:caractere
senha:caractere
cadUser:caractere
User:caractere
Inicio
escreval ("N�o h� registro de usu�rio, crie uma conta.")
escreval ("Insira um nome de usu�rio:")
leia (cadUser)
escreval ("Insira uma senha segura:")
leia (cadSenha)
escreval ("Tudo pronto! Agora fa�a login.")
escreval ("Insira seu nome de usu�rio:")
leia (User)

se (User = cadUser) ent�o
   escreval ("Usu�rio encontrado, insira sua senha: ")
   leia (senha)
          se (senha = cadSenha) entao
             escreval ("acesso autorizado")
          senao
              escreval ("Senha incorreta, reinicie o programa e tente novamente")
          fimse
senao
    escreval("Usu�rio n�o identificado, reinicie o programa e tente novamente")
fimse



Fimalgoritmo