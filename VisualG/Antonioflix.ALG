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
catalogo: caractere
pagamento: logico
pagar: caractere
login: logico
assistir: caractere
variavelfodapraescondertextorepetido: inteiro


Inicio
login := verdadeiro
assistir := "s"
escreval ("Seja bem-vindo(a) � Ant�nioflix. Crie sua conta.")
escreval ("Insira um nome de usu�rio:")
leia (cadUser)
escreval ("Insira uma senha segura:")
leia (cadSenha)
escreval ("Para utilizar nossos servi�os, � necess�rio uma assinatura ativada")
escreval ("Gostaria de assinar agora ou deixar para depois?")
escreval ("1. Assinar agora!")
escreval ("2. Deixar para depois.")
leia (pagar)
escolha pagar
caso "1"
pagamento := verdadeiro
caso "2"
pagamento := falso
fimescolha
limpatela
escreval ("Tudo pronto! Agora fa�a login.")
escreval ("Insira seu nome de usu�rio:")
leia (User)
enquanto (login = verdadeiro) faca
se (User = cadUser) ent�o
   se (variavelfodapraescondertextorepetido = 0) entao
   escreval ("Usu�rio encontrado, insira sua senha: ")
   senao
   escreval ("Insira sua senha.")
   fimse
   leia (senha)
          se (senha <> cadSenha) entao
             escreval ("Senha incorreta, tente novamente")
             variavelfodapraescondertextorepetido := 1
          senao
             escreval ("Acesso autorizado, bem-vindo(a) ",User,"!")
             login := falso
          fimse
senao
    escreval("Usu�rio n�o identificado, tente novamente")
    leia (User)
fimse
fimenquanto
enquanto (assistir = "s") faca
escreval ("Bem-vindo ao cat�logo, escolha uma das op��es")
escreval ("1. Exterminador do Futuro")
escreval ("2. Matrix")
escreval ("3. Barbie: Escola de Princesas")
leia (catalogo)
escolha catalogo
caso "1"
     escreval ("Voc� selecionou o t�tulo: 'Exterminador do Futuro'")
     se (pagamento = verdadeiro) ent�o
     escreval ("Seu filme est� carregando, aguarde...")
     escreval ("gostaria de continuar assistindo?")
     escreval ("s ou n?")
     leia (assistir)
     sen�o
     escreval ("Parece que sua assinatura est� desatualizada.")
     escreval ("Realize o pagamento para continuar.")
     escreval ("Deseja pagar agora? Sim ou N�o")
     leia (pagar)
     se (pagar = "Sim") ent�o
     escreval ("O Pagamento foi efetuado")
     pagamento := verdadeiro
     escreval ("Seu filme est� carregando")
     fimse
     fimse
     
caso "2"

     escreval ("Voc� selecionou o t�tulo: 'Matrix'")
     se (pagamento = verdadeiro) ent�o
     escreval ("Seu filme est� carregando, aguarde...")
     escreval ("gostaria de continuar assistindo?")
     escreval ("s ou n?")
     leia (assistir)
     sen�o
     escreval ("Parece que sua assinatura est� desatualizada.")
     escreval ("Realize o pagamento para continuar.")
     escreval ("Deseja pagar agora? Sim ou N�o")
     leia (pagar)
     se (pagar = "Sim") ent�o
     escreval ("O Pagamento foi efetuado")
     pagamento := verdadeiro
     escreval ("Seu filme est� carregando")
     fimse
     fimse
     
caso "3"
     escreval ("Voc� selecionou o t�tulo: 'Barbie: Escola de Princesas'")
     se (pagamento = verdadeiro) ent�o
     escreval ("Seu filme est� carregando, aguarde...")
     escreval ("Seu filme est� carregando, aguarde...")
     escreval ("gostaria de continuar assistindo?")
     escreval ("s ou n?")
     leia (assistir)
     sen�o
     escreval ("Parece que sua assinatura est� desatualizada.")
     escreval ("Realize o pagamento para continuar.")
     escreval ("Deseja pagar agora? Sim ou N�o")
     leia (pagar)
     se (pagar = "Sim") ent�o
     escreval ("O Pagamento foi efetuado")
     pagamento := verdadeiro
     escreval ("Seu filme est� carregando")
     fimse
     fimse
fimescolha
fimenquanto


Fimalgoritmo