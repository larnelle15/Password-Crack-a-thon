codepath@lab000000:~$ cd unit3
codepath@lab000000:~/unit3$ ls cp_leak.txt
cp_leak.txt
codepath@lab000000:~/unit3$ less -N cp_leak.txt
      1 kbean:$1$pOTYXbkg$FAIsKfK7sHdEcTjnD3hJ2/
      2 amata:$1$mXoWUMTj$AK1VKJQdaly9MbwfB0fDT0
      3 phuff:$1$ReHDdW1w$U.gqL77gK28LDx3Lge7F5/
      4 swray:$1$o4T4blgy$hKFJAPAcMPmDHDOdmPKT30
      5 akaka:$1$zPViMTHl$2JyhPEiRPuWGMDZ1Gpsxm.
      6 dweir:$1$K1g1U50a$63H4QR.7r9NT/MTGa/oQG.
      7 erosas:$1$DtoGNIFR$Ap2Ofe4HPp8Ly0gmKTX0g/
      8 fzahra:$1$VciVRPce$/gYN18rmV.wLT2IjqXSwa0
      9 nnawaz:$1$A5eltLeg$MsRlIxRDkt3/cdKYH1cIN0
     10 lray:$1$CPVqprmg$6WXYOtsPtNieB7ZaOpGp7/
     11 rdickinson:$1$cl63xThL$DKo1CrqIBGMAH6LEwlDY3.
     12 jcraddock:$1$zUO/NfNB$tgIVvNp1i1n2/7rpv4gfd0
     13 daquino:$1$tOeG8KdP$shUa8mhpY4b/h4OAZqHe61
     14 jlie:$1$hBkjMGUT$FdpBoaRA1W1WO7KoZGxeK1
     15 lwhitehead:$1$Ao2njG.s$g3OarA90yV3nEw797ofdu.
     16 wyip:$1$RJ0aSe0j$uv.f47Dae6Dt7DtBgXsAX0
     17 dpickett:$1$7WklKeup$bUQD59QHVFiEgEdaZpjYr1
     18 cjohns:$1$xIIRXmAB$X.OLLEP94kRnmPJzT0Dgo/
     19 kwilkes:$1$3JWzjDkx$a/ZwLy.x2lJJZ0VF3DCgF.
     20 ckaur:$1$3dGFc44M$Jw5kfuNjYiI6RDsZlTd2N.
     21 csommer:$1$TY0o68Aa$e/hyzhmenLPO9jlA0tWHZ0
     22 kdunham:$1$z0IMDB/k$oZT7sGZ4KeJYiX5lCRgwr0
     23 ctalbot:$1$4mcP/muc$LQXVkIf8q19d.Vta58Zi6.
     24 bmcgowan:$1$rCs8RlnA$zSQP/iDaaS.fyK172QtBX0
     25 lvasquez:$1$UL4q6VHu$TYfmUJ8ZluBS8LCD0wI8c0
     26 thargrove:$1$DlnAYH8F$uTptZBR5j9w17lMlFyZ501
     27 yfang:$1$LHVQuKyG$7d3UkkhbWRXGEJArGv83p/
     28 awulandari:$1$j2vPtdw9$umZmjDybSeUnStWSPyBnM/
     29 vmarshall:$1$/e0FdKcY$5x7bhWe5FrJoUNd8it5lR1
     30 strotter:$1$0h7WZC8e$1K5YkK4oANq6Qz6FiwReP0
     31 tthomas:$1$NPxbmj.v$3H.1TLTmY9F81VNVeLaUG.
     32 htrang:$1$/MS4863V$9CJO/LkvEG3nxZUUbbQBz1
     33 rstahl:$1$zJZ9SL5u$eQtore2kncySQK5qXD0gY1
     34 bvasquez:$1$pLVY/lrN$T224NY9Ah5e8/I6D1NveU/
     35 mfritz:$1$9ufj9jLo$cNdSq71HMODR4nEom.Wm20
     36 mevangelista:$1$o1YNpI4A$hKAqfgG.8nw6W24LrIaiz1
     37 fchristian:$1$LzE4lC14$Dtg0BAlICU5gouhWBQjKc/
     38 ralves:$1$nI4aPm5F$Xd4n0w9sIKu3s0dN8FWV70
     39 spuckett:$1$vKeUGwFJ$XlC96jHdTDLfon.P8eKdM0
     40 tbond:$1$ijUp2LYx$6fDJ/c86bzQUIysFRUElC.
     41 astringer:$1$Gt161ED7$ATJEIRmzdDGGs.iqFFVSd1
     42 jaltman:$1$S4nuxwrG$nXk3ULrWfLXpqAZU7JaRH0
     43 yclark:$1$kvrUMM7N$a3qtPTuzPQbjV1csvW1fF0
     44 mheng:$1$eKg6p5fh$BWVLRCy9p6QzN5FuiloKn0
codepath@lab000000:~/unit3$ john --show cp_leak.txt
0 password hashes cracked, 1000 left


