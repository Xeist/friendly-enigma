Algoritmo "semnome"
Var
aluno: caractere
senha: caractere
nomedoaluno: caractere
senhadoaluno: caractere
loginProva: logico
andamentoProva: logico
esconderRepeticao: inteiro
pergunta1: logico
pergunta2: logico
pergunta3: logico
resposta1: caractere
resposta2: caractere
resposta3: caractere
Inicio
esconderRepeticao:= 0
loginProva:= verdadeiro
escreva ("Registre-se com seu nome: ")
leia (aluno)
escreva ("Digite sua senha: ")
leia (senha)
escreval ("----------Avaliação de Conhecimentos gerais----------")
escreval ("Para realizar a avaliação, primeiro faça login")
escreval ("Aluno: ")
leia(nomedoaluno)
enquanto (loginProva = verdadeiro) faca
se (nomedoaluno = aluno) entao
   se (esconderRepeticao = 0) entao
   escreval ("Aluno encontrado, digite a senha: ")
   senao
   escreval ("Digite a senha")
   fimse
   leia (senhadoaluno)
            se (senhadoaluno <> senha) entao
        escreval ("Senha incorreta. Tente novamente.")
        esconderRepeticao:= 1
            senao
        escreval ("Login realizado com sucesso.")
        loginProva:= falso
            fimse
senao
     escreval ("Aluno não consta na lista de chamada!")
     escreval ("Insira o nome do aluno novamente.")
     leia (nomedoaluno)
fimse
fimenquanto
limpatela

andamentoProva:= verdadeiro
enquanto (andamentoProva = verdadeiro) faca
escreval ("Responda todas as alternativas em maiúsculo.")
escreval ("-----------------------------------------------------")
escreval ("----------Avaliação de Conhecimentos gerais----------")
escreval ("-----------------------------------------------------")
escreval ("")
escreval ("1ª pergunta:")
escreval ("Qual o maior e o menor país do mundo, respectivamente?")
escreval ("A. Rússia e Vaticano")
escreval ("B. Nauru e China")
escreval ("C. Mônaco e Canadá")
escreval ("D. Malta e Estados Unidos")
leia (resposta1)
escolha resposta1
caso "A"
    pergunta1 := verdadeiro
caso "B"
    pergunta1 := falso
caso "C"
    pergunta1 := falso
caso "D"
    pergunta1 := falso
fimescolha
escreval ("2ª pergunta:")
escreval ("Em que período da pré-história o fogo foi descoberto?")
escreval ("A. Neolítico")
escreval ("B. Paleolítico")
escreval ("C. Idade dos Metais")
escreval ("D. Idade Média")
leia (resposta2)
escolha resposta2
caso "A"
    pergunta2 := falso
caso "B"
    pergunta2 := verdadeiro
caso "C"
    pergunta2 := falso
caso "D"
    pergunta2 := falso
fimescolha
escreval ("3ª pergunta:")
escreval ("Quanto tempo a luz solar leva pra chegar na Terra")
escreval ("A. 12 minutos")
escreval ("B. 1 dia")
escreval ("C. 12 horas")
escreval ("D. 8 minutos")
leia (resposta3)
escolha resposta3
caso "A"
    pergunta3 := falso
caso "B"
    pergunta3 := falso
caso "C"
    pergunta3 := falso
caso "D"
    pergunta3 := verdadeiro
fimescolha
limpatela
se (pergunta3 = verdadeiro) e (pergunta2 = verdadeiro) e (pergunta1 = verdadeiro) entao
andamentoProva := falso
limpatela
escreval ("Você acertou todas as alternativas.")
senao
escreval ("Parece que alguma resposta estava errada.")
escreval ("É preciso acertar todas para passar na prova.")
se (pergunta1 = falso) entao
escreval ("Você errou a alternativa 1")
senao
fimse
se (pergunta2 = falso) entao
escreval ("Você errou a alternativa 2")
senao
fimse
se (pergunta3 = falso) entao
escreval ("Você errou a alternativa 3")
senao
fimse
fimse
fimenquanto
escreval ("Você passou.")
Fimalgoritmo