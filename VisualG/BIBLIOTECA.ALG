Algoritmo "biblioteca"
tipo dataNasc = registro
   dia, mes, ano: inteiro
fimregistro
cad = registro
   nome: caractere
   senha: caractere
   nasc: dataNasc
fimregistro
procedimento boasvindas
inicio
   escreval ("    ____     ______  __     __                       _         ______       _____           ")
   escreval ("   ||——— \  ||————— || \   / ||       \       / ||  ||\   ||  ||———— \     /—————\          ")
   escreval ("   ||    /  ||___   ||  \ /  || ____   \     /  ||  || \  ||  ||      \   /       \         ")
   escreval ("   ||  <<   ||———   ||   V   || ————    \   /   ||  ||  \ ||  ||      |  |         |        ")
   escreval ("   ||    \  ||_____ ||       ||          \ /    ||  ||   \||  ||      /   \       /         ")
   escreval ("   ||___ /  |______ ||       ||           V     ||  ||    \|  ||_____/     \_____/          ")
   escreval ("                                       ___                                                  ")
   escreval ("                                      /———\                                                 ")
   escreval ("                                     /_____\                                                ")
   escreval ("                                    /———————\                                               ")
   escreval ("                                   /         \                                              ")
   escreval ("                                  /           \                                             ")
   escreval ("                                                                                            ")
   escreval ("     ____        ____                  _____     ________    ______    ______       ___     ")
   escreval ("    ||——— \  || ||——— \  ||      ||   /—————\   |___  ___|  ||—————   /______|     /———\    ")
   escreval ("    ||    /  || ||    /  ||      ||  /       \      ||      ||____   /            /_____\   ")
   escreval ("    ||  <<   || ||  <<   ||      || ||       ||     ||      ||————   |           /———————\  ")
   escreval ("    ||    \  || ||    \  ||____  ||  \       /      ||      ||_____  \ ______   /         \ ")
   escreval ("    ||___ /  || ||___ /  |_____| ||   \_____/       ||      |______   \______| /           \")
fimprocedimento
Var
   bibl, corr: logico
   start, nulo, resp: caractere
   cd: cad
   livros: vetor[1..3] de caractere
Inicio
   boasvindas
   leia (start)
   limpatela
   se (start <> "") ou (start = "" )entao
      bibl:= verdadeiro
   fimse
   enquanto (bibl = verdadeiro) faça
      se (cd.nome = "") entao
         escreval ("É necessário registrar um usuário antes de utilizar a biblioteca.")
         escreval ("1. Registrar            2. Sair")
      fimse
      leia (resp)
      escolha resp
      caso "1"
         repita
            corr:= verdadeiro
            escreva("Forneça um nome de usuário: ")
            leia (cd.nome)
            se (cd.nome = "") entao
               escreval ("Esse nome não está disponível")
               leia (nulo)
            senao
               corr:= falso
            fimse
         ate (corr = falso)
         escreval ("")
         corr:= verdadeiro
         repita
            escreva ("Forneça uma senha: ")

            leia (cd.senha)
            se (cd.senha = "") entao
               escreval ("Insira uma senha válida!")
               leia (nulo)
            senao
               corr := falso
            fimse
         ate (corr = falso)
         repita
            corr:= verdadeiro
            repita
               escreval ("Forneça sua data de nascimento separada por dia, mês e ano.")
               leia (cd.nasc.dia)

               leia (cd.nasc.mes)
               leia (cd.nasc.ano)
               se (cd.nasc.dia <= 0 ou cd.nasc.dia >= 32) entao
                  escreval ("Forneça uma data válida")
               senao
                  se (cd.nasc.mes <= 0 ou cd.nasc.mes >= 13) entao
                     escreval ("Forneça uma data válida")
                  senao
                     se (cd.nasc.ano <= 1923) ou (cd.nasc.ano >= 2022) entao
                        escreval ("Forneça uma data válida")
                     senao
                        corr:= falso
                     fimse
                  fimse
               fimse
            ate (corr = falso)
            escreval (cd.nasc.dia,"/",cd.nasc.mes,"/",cd.nasc.ano," Está correto? 1. Sim 2. Não")
            leia (resp)
            limpatela
         ate (resp = 1)
      caso "2"
         bibl:= falso
      fimescolha
   fimenquanto


Fimalgoritmo