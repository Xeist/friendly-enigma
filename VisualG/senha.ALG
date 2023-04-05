Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/03/2023
Var
cadSenha:caractere
senha:caractere
cadUser:caractere
User:caractere
Inicio
escreval ("Não há registro de usuário, crie uma conta.")
escreval ("Insira um nome de usuário:")
leia (cadUser)
escreval ("Insira uma senha segura:")
leia (cadSenha)
escreval ("Tudo pronto! Agora faça login.")
escreval ("Insira seu nome de usuário:")
leia (User)

se (User = cadUser) então
   escreval ("Usuário encontrado, insira sua senha: ")
   leia (senha)
          se (senha = cadSenha) entao
             escreval ("acesso autorizado")
          senao
              escreval ("Senha incorreta, reinicie o programa e tente novamente")
          fimse
senao
    escreval("Usuário não identificado, reinicie o programa e tente novamente")
fimse



Fimalgoritmo