Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/03/2023
Var
resposta1: caractere
resposta1l: logico
resposta2: caractere
resposta2l: logico
resposta3: caractere
resposta3l: logico
resposta4: caractere
resposta4l: logico
resposta5: caractere
resposta5l: logico
Inicio
resposta1l:= falso
resposta2l:= falso
resposta3l:= falso
resposta4l:= falso
resposta5l:= falso
repita
escreval ("S� � poss�vel passar para a pr�xima caso acerte")
escreval ("Quem matou Hitler?")
escreval ("A. Stalin")
escreval ("B. Stephen Hawking")
escreval ("C. Hitler")
escreval ("D. Albedo (do ben 10)")
leia (resposta1)
se (resposta1 = "c") ou (resposta1 = "C") entao
     resposta1l:= verdadeiro
     limpatela
senao
     limpatela
     escreval ("vc errou kk")
fimse
ate (resposta1l = verdadeiro)
escreval ("isso ai, a resposta certa era a alternativa ",resposta1)

repita
escreval ("")
escreval ("S� � poss�vel passar para a pr�xima caso acerte")
escreval ("Quando foi criado o Minecraft")
escreval ("A. 2009")
escreval ("B. 2010")
escreval ("C. 2008")
escreval ("D. 2011")
leia (resposta2)
se (resposta2 = "a") ou (resposta2 = "A") entao
     resposta2l:= verdadeiro
     limpatela
senao
     limpatela
     escreval ("vc errou kk")
fimse
ate (resposta2l = verdadeiro)
escreval ("isso ai, a resposta certa era a alternativa ",resposta2)

repita
escreval ("")
escreval ("S� � poss�vel passar para a pr�xima caso acerte")
escreval ("O Creeper era para ser qual mob inicialmente?")
escreval ("A. Porco")
escreval ("B. Galinha")
escreval ("C. Ovelha")
escreval ("D. Vaca")
leia (resposta3)
se (resposta3 = "a") ou (resposta3 = "A") entao
     resposta3l:= verdadeiro
     limpatela
senao
     limpatela
     escreval ("vc errou kk")
fimse
ate (resposta3l = verdadeiro)
escreval ("isso ai, a resposta certa era a alternativa ",resposta3)

repita
escreval ("")
escreval ("S� � poss�vel passar para a pr�xima caso acerte")
escreval ("O corante vermelho � feito de que?")
escreval ("A. Tinta")
escreval ("B. Flor")
escreval ("C. Cochonilha")
escreval ("D. Joaninha")
leia (resposta4)
se (resposta4 = "B") ou (resposta4 = "b") entao
     resposta4l:= verdadeiro
     limpatela
senao
     limpatela
     escreval ("vc errou kk")
fimse
ate (resposta4l = verdadeiro)
escreval ("isso ai, a resposta certa era a alternativa ",resposta4)

repita
escreval ("")
escreval ("S� � poss�vel passar para a pr�xima caso acerte")
escreval ("Quais eram os 3 maiores com�rcios no Brasil Col�nia?")
escreval ("A. Pau-Brasil, a��car e escravos")
escreval ("B. A��car, ouro e algod�o")
escreval ("C. Algod�o, ouro e petr�leo")
escreval ("D. Pau-Brasil, a��car e ouro")
leia (resposta5)
se (resposta5 = "d") ou (resposta5 = "D") entao
     resposta5l:= verdadeiro
     limpatela
senao
     limpatela
     escreval ("vc errou kk")
fimse
ate (resposta5l = verdadeiro)
escreval ("isso ai, a resposta certa era a alternativa ",resposta5)
escreval ("")
escreval ("Acertou todas as respostas.")
Fimalgoritmo