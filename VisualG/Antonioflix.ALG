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
catalogo: caractere
pagamento: logico
pagar: caractere
login: logico
assistir: caractere
variavelfodapraescondertextorepetido: inteiro


Inicio
login := verdadeiro
assistir := "s"
escreval ("Seja bem-vindo(a) à Antônioflix. Crie sua conta.")
escreval ("Insira um nome de usuário:")
leia (cadUser)
escreval ("Insira uma senha segura:")
leia (cadSenha)
escreval ("Para utilizar nossos serviços, é necessário uma assinatura ativada")
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
escreval ("Tudo pronto! Agora faça login.")
escreval ("Insira seu nome de usuário:")
leia (User)
enquanto (login = verdadeiro) faca
se (User = cadUser) então
   se (variavelfodapraescondertextorepetido = 0) entao
   escreval ("Usuário encontrado, insira sua senha: ")
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
    escreval("Usuário não identificado, tente novamente")
    leia (User)
fimse
fimenquanto
enquanto (assistir = "s") faca
escreval ("Bem-vindo ao catálogo, escolha uma das opções")
escreval ("1. Exterminador do Futuro")
escreval ("2. Matrix")
escreval ("3. Barbie: Escola de Princesas")
leia (catalogo)
escolha catalogo
caso "1"
     escreval ("Você selecionou o título: 'Exterminador do Futuro'")
     se (pagamento = verdadeiro) então
     escreval ("Seu filme está carregando, aguarde...")
     escreval ("gostaria de continuar assistindo?")
     escreval ("s ou n?")
     leia (assistir)
     senão
     escreval ("Parece que sua assinatura está desatualizada.")
     escreval ("Realize o pagamento para continuar.")
     escreval ("Deseja pagar agora? Sim ou Não")
     leia (pagar)
     se (pagar = "Sim") então
     escreval ("O Pagamento foi efetuado")
     pagamento := verdadeiro
     escreval ("Seu filme está carregando")
     fimse
     fimse
     
caso "2"

     escreval ("Você selecionou o título: 'Matrix'")
     se (pagamento = verdadeiro) então
     escreval ("Seu filme está carregando, aguarde...")
     escreval ("gostaria de continuar assistindo?")
     escreval ("s ou n?")
     leia (assistir)
     senão
     escreval ("Parece que sua assinatura está desatualizada.")
     escreval ("Realize o pagamento para continuar.")
     escreval ("Deseja pagar agora? Sim ou Não")
     leia (pagar)
     se (pagar = "Sim") então
     escreval ("O Pagamento foi efetuado")
     pagamento := verdadeiro
     escreval ("Seu filme está carregando")
     fimse
     fimse
     
caso "3"
     escreval ("Você selecionou o título: 'Barbie: Escola de Princesas'")
     se (pagamento = verdadeiro) então
     escreval ("Seu filme está carregando, aguarde...")
     escreval ("Seu filme está carregando, aguarde...")
     escreval ("gostaria de continuar assistindo?")
     escreval ("s ou n?")
     leia (assistir)
     senão
     escreval ("Parece que sua assinatura está desatualizada.")
     escreval ("Realize o pagamento para continuar.")
     escreval ("Deseja pagar agora? Sim ou Não")
     leia (pagar)
     se (pagar = "Sim") então
     escreval ("O Pagamento foi efetuado")
     pagamento := verdadeiro
     escreval ("Seu filme está carregando")
     fimse
     fimse
fimescolha
fimenquanto


Fimalgoritmo