Algoritmo "RPG"
tipo consumivel = registro
 nome: caractere
 quantidade: inteiro
 chave: caractere
fimregistro
equipamento = registro
poder: inteiro
nome: caractere

fimregistro
procedimento hptest
var
inicio
   se (hpa < 2) entao
      se (hp = 1) entao
         escreval ("FUJA! Voc� s� tem 1 de vida!")
         leia (nulo)
      senao
         fight:= falso
         escreval ("Voc� chegou aos 0 de vida e n�o pode mais lutar.")
         escreval ("Voc� perdeu",(lvlxp/4),"xp e",(gold/6)" ouro.")
         horario
         leia (nulo)
      fimse

   senao
      se (hpinim <= 0) entao
         fight:= falso
         escreval ("Voc� venceu a luta!")
         horario
         xpg := randi(lvl*lvl+1) + (randi(6)+2)
         lvlxp := lvlxp + xpg
         ggold:= (randi(8)+1)*(randi(5)+1)
         gold:= ggold
         escreval ("Voc� recebeu",xpg," de experi�ncia e",ggold, " de ouro!")
         leia (nulo)
         se (lvlxp = lvlup) entao
            lvlxp:= 0
            lvl:= lvl + 1
            lvlup:= (lvl * lvl * lvl) + 20
            escreval ("Voc� subiu ao n�vel",lvl,"!")
            leia (nulo)
         fimse
      fimse
   fimse
fimprocedimento
procedimento ataque
var

inicio
   i:= randi(6) + class[1,1]
   escreval ("Digite um valor de 1 a 6")
   leia (dmg)
   se (dmg = i) entao
      escreval ("ACERTO CR�TICO!")
      se (dmg <= 3) entao
         dmg := (i * i) + (class[1,1]* (randi(2)+1))
         escreval ("Voc� deu",dmg," de dano.")
         escreval ("HP inimigo:",hpinim," >>>",(hpinim - dmg))
         hpinim:= (hpinim - dmg)

      senao
         se (dmg >= 4) entao
            dmg := (i + i) + (class[1,1]* (randi(2)+1))
            escreval ("Voc� deu",dmg," de dano.")
            escreval ("HP inimigo:",hpinim," >>>",(hpinim - dmg))
            hpinim:= (hpinim - dmg)

         fimse
      fimse
   senao
      escreval ("Voc� deu",i," de dano.")
      hpinim:= hpinim - i
   fimse
   leia (act)
   limpatela
   se (hpinim > 0) entao
      escreval ("� o turno de ",inim,"!")
      escreval ("Vida restante do inimigo:",hpinim," /",hpinimm)
      se (local = "floresta") entao
         dmg:= randi(6) + 1
         escreval (inim," ataca, dando",dmg," de dano!")
         escreval ("    ",hpa," >>>",(hpa-dmg))
         hpa:= (hpa - dmg)
         leia (nulo)
      fimse
      se (local = "caverna") entao
         dmg:= randi(5) + 3
         escreval (inim," ataca, dando",dmg," de dano!")
         escreval ("    ",hpa," >>>",(hpa-dmg))
         hpa:= (hpa - dmg)
         leia (nulo)
      fimse
   senao
      escreval (inim," n�o aguentou o �ltimo ataque.")
      hptest
   fimse
fimprocedimento
procedimento profile
var
inicio
   i:= 1
   repita
      repita
         escreval ("Dados do jogador:")
         escreval ("HP:",hpa," /",hpm)
         escreval ("Arma: ",pers[1,1])
         escreval ("Xp:",lvlxp," /",lvlup)
         escreval ("P�gina 1")
         escreval ("Digite o n�mero da p�gina desejada, ou 3 para sair.")
         escreval ("Digitar outro n�mero causar� erro")
         leia (i)
      ate (i <> 1)
      repita
         escreval ("Invent�rio: ")
         escreval ("[",pers [1,1],"      ", pers[1,2],"]")
         escreval ("[",pers [2,1],"      ", pers[2,2],"]")
         escreval ("[",pers [3,1],"      ", pers[3,2],"]")
         escreval ("")
         escreval (qtd[1,1]," ", item[1,1],"      ",qtd[1,2]," ",item[1,2],"       ",qtd[1,3]," ", item[1,3])
         escreval (qtd[2,1]," ", item[2,1],"      ",qtd[2,2]," ",item[2,2],"       ",qtd[2,3]," ", item[2,3])
         escreval (qtd[3,1]," ", item[3,1],"      ",qtd[3,2]," ",item[3,2],"       ",qtd[3,3]," ", item[3,3])
         escreval ("P�gina 2")
         escreval ("Digite o n�mero da p�gina desejada, ou 3 para sair.")
         escreval ("Digitar outro n�mero causar� erro")
         leia (i)
      ate (i <> 2)
   ate (i = 3)
   local := ""
fimprocedimento
procedimento horario
var
inicio
   hora:= hora+1
   se (noite = falso) entao
      se (hora >= 51) entao
         noite := verdadeiro
         hora := 0
      fimse
   senao
      se (hora >= 51) entao
         hora := 0
         noite := falso
      fimse
   fimse

fimprocedimento
procedimento fuga
var
inicio
   escreval ("Para fugir voc� precisa acertar")
   i := randi(9) + 1
   escreval ("O n�mero � aleat�rio entre 1 e 9")
   leia (act)
   se (hpa = 1) entao
      se (act >= i-2) e (act <= i+2)
         fight := falso
         escreval ("Voc� acertou e conseguiu fugir")
         leia (nulo)
      senao
         escreval ("Voc� falhou em fugir, portanto a luta continua, boa sorte.")
         leia (nulo)
      fimse
   senao
      se (act >= i-1) e (act <= i+1) entao
         fight:= falso
         escreval ("Voc� acertou e conseguiu fugir")
         leia (nulo)
      senao
         escreval ("Voc� falhou em fugir, portanto a luta continua.")
         leia (nulo)
      fimse
   fimse
fimprocedimento
procedimento usaritem
var
inicio
   limpatela
   escreval ("INVENT�RIO:")
   escreval (qtd[1,1]," ", item[1,1],"      ",qtd[1,2]," ",item[1,2],"       ",qtd[1,3]," ", item[1,3])
   escreval (qtd[2,1]," ", item[2,1],"      ",qtd[2,2]," ",item[2,2],"       ",qtd[2,3]," ", item[2,3])
   escreval (qtd[3,1]," ", item[3,1],"      ",qtd[3,2]," ",item[3,2],"       ",qtd[3,3]," ", item[3,3])
   leia (act)
   para j de 1 ate 3 fa�a

      para k de 1 ate 3 fa�a
         se (item[j,k] = act) entao
            se (qtd[j,k] >= 1) entao
               escreval ("Voc� consumiu ",item[j,k])
               qtd[j,k]:= qtd[j,k] - 1
               i:= randi(5)+2
               hpa:= hpa + i
               escreval ("Recebeu",i, " de vida!")
               escreval ((hpa-i)," >>>",hpa)
               leia (nulo)
               se (hpa > hpm) entao
                  hpa:= hpm
               fimse
               se (qtd[j,k] = 0) entao
                  escreval ("Voc� n�o possui mais do item: ",item[j,k])
                  item[j,k]:= ""
                  leia (nulo)
               senao
                  escreval ("Voc� possui",qtd[j,k]," ",item[j,k]," restantes.")
                  leia (nulo)
               fimse
            fimse
         fimse
      fimpara
   fimpara
   horario
fimprocedimento

Var

   pers: vetor [1..3, 1..2] de caractere
   class: vetor [1..3, 1..2] de inteiro
   item: vetor [1..9] de consumivel

   dflor, mcave, mcavef, drio, fonte, nflor, nrio: vetor [1..6] de caractere
   direc: vetor [1..8] de inteiro
   nome, tutorial, caminho, act, local, achado, inim, nulo: caractere
   hpa, hpm, lvl, lvlxp, gold, hpinim, hpinimm, dmg, xpg, lvlup, busca, i, j, k, ggold, hora, angulo: inteiro
   end, fight, noite, perseg: logico
Inicio
   end:= falso
   direc[1] := 000
   direc[2] := 045
   direc[3] := 090
   direc[4] := 135
   direc[5] := 180
   direc[6] := 225
   direc[7] := 270
   direc[8] := 315
   dflor[1] := "Goblin Feio"
   dflor[2] := "Pequeno Golem"
   dflor[3] := "Fada Rosa"
   dflor[4] := "Javali"
   dflor[5] := "Aranha de bambu"
   dflor[6] := "Peixe Dourado"
   mcave[1] := "Aranha da caverna"
   mcave[2] := "Fada Azul"
   mcave[3] := "Ba� Suspeito"
   mcave[4] := "Goblin Ladr�o"
   mcave[5] := "Pequeno Golem"
   mcave[6] := "Slime"
   mcavef[1] := "Caracol de Cristal"
   mcavef[2] := "Aranha Gigante"
   mcavef[3] := "Capetinha"
   mcavef[4] := "Esqueleto R�gido"
   mcavef[5] := "Dem�nio da Gan�ncia"
   mcavef[6] := "Minerador de Almas"
   nflor[1] := "Esp�rito da Floresta"
   nflor[2] := "Ursoruja"
   nflor[3] := "Quimera"
   nflor[4] := "Medusa"
   nflor[5] := "Lobo Morto"
   nflor[6] := "Bruxa Maligna"
   nrio[1] := "Lagosta Mutante"
   nrio[2] := "Sereia"
   nrio[3] := "Crocodilo Gigante"
   nrio[4] := "Marinheiro Afogado"
   nrio[5] := "Peixe Espada"
   nrio[6] := "Arraia Brilhante"
   drio[1] := "Lambari"
   drio[2] := "Tambaqui"
   drio[3] := "Peixinho Dourado"
   drio[4] := "Sardinha"
   drio[5] := "Peixe-Camale�o"
   drio[6] := "Caramujo sub-aqu�tico"
   lvl := 1
   lvlxp := 0
   gold:= 20
   hpm:= 20
   hpa:= hpm
   i:= 0
   lvlup:= (lvl * lvl * lvl) + 20
   repita
      escreval("Esse � um pequeno RPG baseado apenas em texto.")
      escreva ("Iniciando voc� define o nome do seu personagem: ")
      leia (nome)
   ate (nome <> "")
   escreval ("Deseja realizar o tutorial? (Recomendado).")
   leia (tutorial)
   se (tutorial = "sim") ou (tutorial = "s") entao
      escreval ("A cada n�vel, um ou mais novos itens podem ser desbloqueados.")
      escreval ("Para fugir de uma batalha, voc� precisa acertar o n�mero")
      escreval ("ou ao menos chegar em uma margem de 1 de erro")
      escreval ("caso voc� tenha 1 de vida, voc� tem 2 de margem de erro.")
      escreval ("Encontrar um esp�rito pode significar boas coisas, ou a perca de muitas.")
      escreval ("Em momentos calmos, digitar '0', lhe mostrar� dados �teis sobre seu perfil.")
      leia (nulo)
   fimse
   limpatela

   escreval ("Bem vindo � Spirit Song, *",nome,"*")
   leia (nulo)
   limpatela
   escreval ("Voc� acorda em um local desconhecido, com dor de cabe�a")
   escreval ("Ao seu redor voc� v�:")
   escreval ("Um rio em meio a uma floresta")
   escreval ("Uma gruta com um brilho sinistro ao fundo")
   escreval ("Uma cidade ao longe.")
   leia (nulo)
   enquanto (end = falso) fa�a
      repita
         limpatela
         horario
         escreval ("Hora:",hora)
         escreval ("Onde voc� vai?")
         escreval ("1. Floresta")
         escreval ("2. Rio")
         escreval ("3. Caverna")
         escreval ("4. Cidade")
         escreval ("Escolha um n�mero por favor.")

         leia (caminho)
         escolha caminho
         caso "1"
            local := "floresta"
            escreval ("Voc� optou por ir � floresta.")
         caso "2"
            local := "rio"
            escreval ("Voc� optou por ir ao rio.")
         caso "3"
            local := "caverna"
            escreval ("Voc� optou por ir � caverna.")
         caso "4"
            local := "cidade"
            escreval ("Voc� optou por ir � cidade.")
         caso "0"
            profile
         fimescolha
         escreval ("Aperte enter")
         leia (tutorial)
         limpatela

         enquanto local = "floresta"  faca
            se (noite = falso) entao
               repita
                  limpatela
                  escreval ("Local: ",local)
                  escreval ("Escolha uma a��o.")
                  escreval ("1. Ca�ar.")
                  escreval ("2. Coletar.")
                  escreval ("3. Ir � outro lugar.")
                  leia (act)
                  escolha act
                  caso "1"
                     se (class[1,1] < 1) entao
                        escreval ("Voc� precisa de uma arma para poder ca�ar.")
                        horario
                        leia (nulo)

                     senao
                        i:= randi (6) + 1
                        escreval ("Voc� encontrou ",dflor[i])
                        leia (nulo)
                        fight:= verdadeiro
                        inim:= dflor[i]
                        hpinim:= ((i+1) * 3) + 3
                        hpinimm:= hpinim
                        enquanto (fight = verdadeiro) fa�a
                           limpatela
                           escreval ("HP Atual:",hpa," /",hpm)
                           escreval ("HP Inimigo:",hpinim," /",hpinimm)
                           escreval ("O que deseja fazer?")
                           escreval ("1. Atacar")
                           escreval ("2. Fugir")
                           escreval ("3. Usar Item")
                           leia (act)
                           escolha act
                           caso "1"
                              ataque

                           caso "2"
                              fuga

                           caso "3"
                              usaritem
                           caso "0"
                              profile
                           fimescolha
                        fimenquanto
                     fimse
                  caso "2"
                     i:= randi (4) + 1

                     escolha i
                     caso 1
                        item[3,1].nome:= "ma�a"
                        item[3,1].quantidade:= item[3,1].quantidade + 1
                        escreval ("Voc� encontrou 'Ma��'.")
                        leia (nulo)
                        hora:= hora + 1
                     caso 2
                        item[3,2].nome:= "cogumelo"
                        item[3,2].quantidade:= item[3,2].quantidade + 1
                        escreval ("Voc� encontrou 'Cogumelos'")
                        leia (nulo)
                        hora:= hora + 1
                     caso 3
                        item[3,3].nome:= "pera"
                        item[3,3].quantidade:= item[3,3].quantidade + 1
                        escreval ("Voc� encontrou 'Pera'")
                        leia (nulo)
                        hora:= hora + 1
                     caso 4
                        se (class [1,1] < 1) entao
                           escreval ("Voc� encontrou um galho pontudo")
                           pers[1,1]:= "galho pontudo"
                           class[1,1]:= 1
                           leia (nulo)
                           hora:= hora + 1
                        senao
                           escreval ("*crek*")
                           escreval ("Voc� pisou em um galho")
                           hora:= hora + 1
                           leia (nulo)
                        fimse
                     fimescolha


                  caso "3"
                     escreval ("Voc� vira �s costas � floresta")
                     escreval ("voc� se sente indefeso. Sua espinha arrepia")
                     escreval ("e voc� anda mais r�pido.")
                     leia (nulo)
                     local := "''"
                     hora:= hora + 1
                  caso "0"
                     profile
                  fimescolha
               ate (local <> "floresta")
            senao //floresta em per�odo noturno
               escreval ("Voc� se sente indefeso e observado.")
               escreval ("Voc� ouve sons como uivos e gritos.")
               escreval ("Voc� sente que n�o devia estar nesse lugar agora.")
               leia (nulo)
               repita
                  limpatela
                  escreval ("...")
                  escreval ("1. Ca�ar")
                  escreval ("2. Coletar")
                  escreval ("3. Ouvir")
                  escreval ("4. Andar pela floresta")
                  escreval ("5. Fugir da escurid�o")
                  leia (act)
                  escolha act
                  caso "1"
                     se (class[1,1] < 1) entao
                        escreval ("Voc� precisa de uma arma para poder ca�ar.")
                        horario
                        leia (nulo)

                     senao
                        escreval ("Voc� sai � ca�ada.")
                        leia (nulo)

                        se (perseg = verdadeiro) entao
                           j:= randi (3) + 1
                           k:= randi (3) + 1
                        senao
                           j:= randi (15)
                           k:= randi (15)
                        fimse
                        se (j=k) entao
                           escreval ("Voc� sente um frio reconfortante acompanhado de uma luz fraca")
                           leia (nulo)
                           limpatela
                           escreval ("Voc� encontrou um ",nflor[1])
                           escreval ("O esp�rito uiva para voc�")
                           escreval ("voc� sente como se j� conhecesse o esp�rito")


                        senao
                           limpatela
                           i:= randi (5) + 2
                           escreval ("Voc� encontrou ",nflor[i])
                           fight:= verdadeiro
                           inim:= nflor[i]
                           hpinimm:= ((i+1) * 3) + 8
                           hpinim:= hpinimm
                           enquanto (fight = verdadeiro) fa�a
                              escreval ("HP Atual:",hpa," /",hpm)
                              escreval ("HP Inimigo:",hpinim," /",hpinimm)
                              escreval ("O que deseja fazer?")
                              escreval ("1. Atacar")
                              escreval ("2. Fugir")
                              escreval ("3. Usar Item")
                              leia (act)
                              escolha act
                              caso "1"
                                 ataque
                              caso "2"
                                 fuga
                              caso "3"
                                 usaritem
                              caso "0"
                                 profile
                              fimescolha
                           fimenquanto
                        fimse
                     fimse
                  caso "2"
                     i:= randi (4) + 1

                     escolha i
                     caso 1
                        item[2,1]:= "noxipomum"
                        qtd[3,1]:= qtd[3,1] + 1
                        escreval ("Voc� encontrou uma 'noxipomum'")
                        leia (nulo)
                        hora:= hora + 1
                     caso 2
                        item[2,2]:= "cogumelo branco"
                        qtd[3,2]:= qtd[3,2] + 1
                        escreval ("Voc� encontrou 'cogumelo branco'")
                        leia (nulo)
                        hora:= hora + 1
                     caso 3
                        item[2,3]:= "limao"
                        qtd[3,3]:= qtd[3,3] + 1
                        escreval ("Voc� encontrou 'lim�o transl�cido'")
                        leia (nulo)
                        hora:= hora + 1
                     caso 4
                        se (class [1,1] < 1) entao
                           escreval ("Voc� encontrou um galho pontudo")
                           pers[1,1]:= "galho pontudo"
                           class[1,1]:= 1
                           leia (nulo)
                           hora:= hora + 1
                        senao
                           escreval ("*crek*")
                           escreval ("Voc� pisou em um galho")
                           hora:= hora + 1
                           leia (nulo)
                        fimse
                     fimescolha
                  caso "3"
                     escreval ("Voc� permanece em sil�ncio.")
                     escreval ("Assobios e uivos ecoam pela floresta")
                     escreval ("em qual dire��o voc� segue?")
                     escreval ("315 000 045")
                     escreval ("270  �  090")
                     escreval ("225 180 135")
                     escreval ("N�o digite outro n�mero sen�o os listados.")
                     leia (angulo)
                     i:= randi(8) + 1
                     se (angulo = direc[i]) ou (angulo = direc[(i-1)]) ou (angulo = direc[(i+1)]) entao
                        escreval ("Voc� sente um arrepio na espinha")
                        escreval ("junto de uma presen�a assustadora por�m reconfortante.")
                        escreval ("Os sons parecem mais pr�ximos")
                        leia (nulo)
                        perseg:= verdadeiro
                     senao
                        escreval ("Voc� sente um calafrio, e os uivos e assobios param.")
                        leia (nulo)
                     fimse
                  caso "4"
                     i:= randi (20) + 1
                     se (i = 19) entao
                        escreval ("Voc� se depara com uma pequena nuvem luminosa.")
                        escreval ("1. Fazer oferta.")
                        escreval ("2. Ir embora.")
                        leia (act)
                        escolha act
                        caso "1"
                           perseg := verdadeiro
                           repita
                           ate (perseg := falso)
                        caso "2"
                           escreval ("Voc� ouve o som de algo se desfazendo �s suas costas")
                           escreval ("voc� se vira, mas n�o v� nada, apenas segue seu caminho.")
                         leia (nulo)
                        fimescolha
                     senao
                        se (i = 18) ou (i = 20) entao
                           escreval ("Voc� v� um feixe de luz entre as �rvores")
                           escreval ("voc� corre atr�s mas n�o encontra nada.")
                        leia (nulo)
                        senao
                        escreval ("Voc� anda pela floresta, at� perceber que est� andando em c�rculos")
                        escreval ("voc� para e descansa no mesmo local de partida.")
                        hpa:= hpa+1
                        escreval (hpa-1," >>>",hpa)
                        leia (nulo)

                        fimse
                     fimse
                  caso "5"
                  escreval ("Voc� tenta andar para fora mas parece que a floresta te puxa para tr�s")
                  escreval ("assustado, voc� corre sem olhar para tr�s.")
                  local:= ""
                  leia (nulo)
                  hora:= hora + 1
                  caso "0"
                     profile
                  fimescolha
               ate (local <> "floresta")
            fimse
         fimenquanto
         enquanto local = "rio"  faca
            repita
               limpatela
               escreval ("Escolha uma a��o.")
               escreval ("1. Pescar.")
               escreval ("2. Descansar.")
               escreval ("3. Ir � outro lugar.")
               leia (act)
               escolha act
               caso "1"
               caso "2"
               caso "3"
                  local := "''"
               caso "0"
                  profile
               fimescolha
            ate (local <> "rio")
         fimenquanto
         enquanto local = "caverna" faca
            act := "0"
            repita
               limpatela
               escreval ("Escolha uma a��o.")
               escreval ("1. Ca�ar.")
               escreval ("2. Minerar.")
               escreval ("3. Ir mais fundo na caverna (N�vel 4+).")
               escreval ("4. Ir � outro lugar.")
               leia (act)
               escolha act
               caso "1"
                  se (pers[1,1] < 1) entao
                     escreval ("Voc� precisa de uma arma para poder ca�ar.")
                  senao
                     i:= randi (6) + 1
                     escreval ("Voc� encontrou ",mcave[i])
                     fight:= verdadeiro
                     inim:= mcave[i]
                     hpinim:= ((i+1) * i) + 8
                     enquanto (fight = verdadeiro) fa�a
                        escreval ("HP Atual:",hpa," /",hpm)
                        escreval ("HP Inimigo:",hpinim)
                        escreval ("O que deseja fazer?")
                        escreval ("1. Atacar")
                        escreval ("2. Fugir")
                        escreval ("3. Usar Item")
                        leia (act)
                        escolha act
                        caso "1"
                           ataque

                        caso "2"
                           escreval ("Para fugir voc� precisa acertar")
                           i := randi(9) + 1
                           escreval ("O n�mero � aleat�rio entre 1 e 9")
                           leia (act)
                           se (hpa = 1) entao
                              se (act >= i-2) e (act <= i+2)
                                 fight := falso
                                 escreval ("Voc� acertou e conseguiu fugir")
                                 leia (nulo)
                              senao
                                 escreval ("Voc� falhou em fugir, portanto a luta continua, boa sorte.")
                                 leia (nulo)
                              fimse
                           senao
                              se (act >= i-1) e (act <= i+1)
                                 fight:= falso
                                 escreval ("Voc� acertou e conseguiu fugir")
                                 leia (nulo)
                              senao
                                 escreval ("Voc� falhou em fugir, portanto a luta continua.")
                                 leia (nulo)
                              fimse
                           fimse
                        caso "3"
                           limpatela
                           escreval ("INVENT�RIO:")
                           escreval (qtd[1,1], item[1,1],"      ",qtd[1,2],item[1,2],"       ",qtd[1,3], item[1,3])
                           escreval (qtd[2,1], item[2,1],"      ",qtd[2,2],item[2,2],"       ",qtd[2,3], item[2,3])
                           escreval (qtd[3,1], item[3,1],"      ",qtd[3,2],item[3,2],"       ",qtd[3,3], item[3,3])
                           leia (act)
                           para j de 1 ate 3 fa�a

                              para k de 1 ate 3 fa�a
                                 se (item[j,k] = act) entao
                                    se (qtd[j,k] >= 1) entao
                                       escreval ("Voc� consumiu ",item[j,k])
                                       qtd[j,k]:= qtd[j,k] - 1
                                       i:= randi(5)+2
                                       hpa:= hpa + i
                                       escreval ("Recebeu",i, " de vida!")
                                       escreval ((hpa-i)," >>>",hpa)
                                       se (hpa > hpm) entao
                                          hpa:= hpm
                                       fimse
                                       se (qtd[j,k] = 0) entao
                                          escreval ("Voc� n�o possui mais do item: ",item[j,k])
                                          item[j,k]:= ""
                                       fimse
                                    fimse
                                 fimse
                              fimpara
                           fimpara
                           horario
                        caso "0"
                           profile
                        fimescolha
                     fimenquanto
                  fimse
               caso "2"
                  se (class[2,1] < 1) entao
                     escreval ("� necess�rio uma picareta.")
                  senao

                  fimse
               caso "3"
                  se (lvl < 4) entao
                     escreval ("Voc� � fraco demais para os desafios do fundo da caverna.")
                     leia(nulo)
                  senao
                  fimse
               caso "4"
                  local := "''"
               caso "0"
                  profile
               fimescolha
            ate (local <> "caverna")
         fimenquanto
         enquanto local = "cidade" faca
            act := "0"
            repita
               limpatela
               escreval ("Escolha uma a��o.")
               escreval ("1. Entrar na loja de armas.")
               escreval ("2. Entrar na loja de armaduras.")
               escreval ("3. Entrar na loja de po��es.")
               escreval ("4. Ir � fonte dos desejos.")
               escreval ("5. Visitar a forja.")
               escreval ("6. Ir � outro lugar.")
               leia (act)
               escolha act
               caso "1"
                  escreval ("Seja bem-vindo(a) � loja de armas de Arcadia!")
                  escreval ("Aqui voc� pode comprar sua primeira e demais armas iniciais")
                  
               caso "2"
                  escreval ("Seja bem-vindo(a) � loja de armaduras de Arcadia!")
                  escreval ("Aqui voc� pode comprar sua primeira e demais armaduras iniciais")
               caso "3"
                  escreval ("Seja bem-vindo(a) � loja de po��es de Arcadia!")
               caso "4"
               caso "5"
                  escreval ("Forja:")
                  escreval ("Aqui voc� pode forjar ou melhorar os seus itens")
                  escreval ("para isso � necess�rio n�vel acima de 3 e os ingredientes")
                  escreval ("da receita ou melhoria")
                  leia (nulo)
                  se (lvl >= 3) entao
                  senao
                  fimse

               caso "6"
                  local := "''"
               caso "0"
                  profile
               fimescolha
            ate (local <> "cidade")
         fimenquanto
         act := "0"
      ate (end = verdadeiro)
   fimenquanto
Fimalgoritmo