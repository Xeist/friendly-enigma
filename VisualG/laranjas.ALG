Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2023
Var
lar: inteiro
cestacheia: logico
chute: inteiro

Inicio
lar <- randi(9)
cestacheia := verdadeiro
enquanto cestacheia = verdadeiro faça
                 escreval ("Descubra quantas laranjas há na cesta.")
                 escreval ("A resposta sempre muda.")
                 escreva ("Digite um número: ")
                leia (chute)
        se (chute = lar) entao
                  escreval ("Parabéns, você acertou")
                  escreval ("Haviam",lar, " laranjas na cesta.")
                  cestacheia := falso

        
        senao
             escreval ("Você errou, tente de novo!")
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