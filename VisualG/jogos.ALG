Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/03/2023
Var
   n,cont,vidas, hp, valor1, valor2: inteiro
   fimtudo, porta1, porta2, porta3, fase1, fase2:logico
   alternativa: caractere


Inicio
   fase1 := verdadeiro
   fase2:= falso
   fimtudo := falso
   vidas:= 3
   hp:= 3
   para cont de 0 ate vidas faca
      se (cont >= 0) entao
         escreval ("você perdeu ",cont,"/3 vidas")
         se (cont = vidas) entao
            fimtudo:= verdadeiro
         senao
         fimse
         enquanto (fimtudo = falso) faca
            se (fase1 = verdadeiro) entao
               repita
                  escreval ("Labirinto de Portas - Parte 1")
                  escreval ("você precisa passar desse labirinto para passar de fase")
                  escreval ("Escolha uma porta, de números 1 até 5")
                  leia (alternativa)
                  escolha alternativa
                  caso "1"
                     porta1 := verdadeiro
                     limpatela
                  caso "2"
                     porta1 := falso
                     hp:= hp-1
                  caso "3"
                     porta1 := falso
                     hp:= hp-1
                  caso "4"
                     porta1 := falso
                     hp:= hp-1
                  caso "5"
                     porta1 := falso
                     hp:= hp-1
                  fimescolha
                  se (porta1 = verdadeiro) entao
                     limpatela
                     escreval ("Você passou para a próxima porta")
                     escreval ("Escolha uma porta, de números 1 até 5")
                     leia (alternativa)
                     escolha alternativa
                     caso "1"
                        porta2 := falso
                        hp:= hp-1
                     caso "2"
                        porta2 := falso
                        hp:= hp-1
                     caso "3"
                        porta2 := falso
                        hp:= hp-1
                     caso "4"
                        porta2 := verdadeiro
                     caso "5"
                        porta2 := falso
                        hp:= hp-1
                     fimescolha
                     se (porta2 = verdadeiro) entao
                        limpatela
                        escreval ("Você passou para a próxima porta")
                        escreval ("Escolha uma porta, de números 1 até 5")
                        leia (alternativa)
                        escolha alternativa
                        caso "1"
                           porta3 := falso
                           hp:= hp-1

                        caso "2"
                           porta3 := verdadeiro
                           limpatela
                        caso "3"
                           porta3 := falso

                           hp:= hp-1
                        caso "4"
                           porta3 := falso

                           hp:= hp-1
                        caso "5"
                           porta3 := falso

                           hp:= hp-1
                        fimescolha
                        se (porta3 = verdadeiro) entao
                           escreval ("você passou para a fase 2")
                           fase2:= verdadeiro
                           fase1:= falso

                        senao
                           limpatela
                           escreval ("Você escolheu a porta errada")
                        fimse
                     senao
                        limpatela
                        escreval ("Você escolheu a porta errada")
                     fimse
                  senao
                     limpatela
                     escreval ("Você escolheu a porta errada")
                  fimse
                  se (hp = 0) entao
                     escreval ("Você perdeu.")
                     fimtudo := verdadeiro
                     fase1:= falso
                  senao
                  fimse
               ate (fase1 = falso)
               escreval ("você perdeu ",cont,"/3 vidas")

            fimse
            se (fase2 = verdadeiro) entao
               repita
               escreval ("Cálculos rápidos - Parte 2")
               escreval ("Não precisa ser realmente rápido")
               escreval ("acertar é o suficiente.")
               escreval ("")
               
               
               
               ate (fase2 = verdadeiro)
            senao
            fimse
         fimenquanto
      senao
      fimse
   fimpara
Fimalgoritmo