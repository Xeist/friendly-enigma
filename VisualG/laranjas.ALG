Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2023
Var
lar: inteiro
cestacheia: logico
chute: inteiro

Inicio
lar <- randi(9)
cestacheia := verdadeiro
enquanto cestacheia = verdadeiro fa�a
                 escreval ("Descubra quantas laranjas h� na cesta.")
                 escreval ("A resposta sempre muda.")
                 escreva ("Digite um n�mero: ")
                leia (chute)
        se (chute = lar) entao
                  escreval ("Parab�ns, voc� acertou")
                  escreval ("Haviam",lar, " laranjas na cesta.")
                  cestacheia := falso

        
        senao
             escreval ("Voc� errou, tente de novo!")
             limpatela
             
        fimse
             se (chute > lar) entao
                   lar := randi(10)
             senao
                  lar := randi(10)
             fimse
                       se (lar <= 0) entao
                       lar := (chute + 1)
                       senao
                       lar := lar
                       fimse

fimenquanto


Fimalgoritmo