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
codepath@lab000000:~/unit3$ john --wordlist=rockyou.txt cp_leak.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 1000 password hashes with 1000 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
hello            (kpatton)     
kitty            (eschroeder)     
missy            (yfang)     
pablo            (lbernardo)     
alice            (dweir)     
78945            (lsims)     
nick             (cvelazquez)     
bingo            (igarza)     
manda            (asullivan)     
jaden            (pschaefer)     
nacho            (sjayne)     
lunas            (olawal)     
clyde            (jhui)     
stone            (dkohler)     
bravo            (ttripp)     
pluto            (jburnette)     
tink             (hcameron)     
elmo             (ecarey)     
amaya            (seast)     
lola             (lpadilla)     
taryn            (jblair)     
gohan            (afahad)     
yoyo             (jlyn)     
claus            (sregmi)     
babby            (jbuchanan)     
sonya            (mrivas)     
lisha            (csloan)     
rohan            (hmishra)     
food             (molsen)     
farid            (sjolly)     
tatum            (jaltman)     
elsie            (asinghania)     
camil            (rdonovan)         
1985             (mlodge)     
beer             (jrandolph)     
35g 0:00:03:45 0.22% (ETA: 2023-12-14 04:46) 0g/s 168.9p/s 166589c/s 166589C/s 091806..jeremy21
35g 0:00:03:46 0.22% (ETA: 2023-12-14 04:54) 0g/s 168.2p/s 166446c/s 166446C/s 091806..jeremy21
crime            (ngordon)     
siska            (achoy)     
amani            (amedhat)     
marsh            (jlao)     
urban            (tmccabe)     
vijay            (cdunn)     
jamez            (mmonte)     
tinka            (aspringer)     
bread            (tklein)     
elder            (achong)     
cooly            (czuniga)     
usagi            (sryder)     
agent            (epetersen)     
ashia            (mashton)     
1432             (mrogers)     
thanh            (hnoor)     
tasty            (lstuart)     
ipod             (ophillips)     
cleo             (smanalo)     
atena            (jgodinez)     
psalm            (tzhao)     
orton            (rbelanger)     
klara            (cworkman)     
lifes            (rkatz)     
adolf            (cwatson)     
teeny            (skhawaja)     
nadie            (lestes)     
62g 0:00:09:01 0.55% (ETA: 2023-12-14 03:58) 0g/s 173.2p/s 166953c/s 166953C/s aubree1..890621
Use the "--show" option to display all of the cracked passwords reliably
Session aborted
codepath@lab000000:~/unit3$ john --wordlist=lower.lst cp_leak.txt --rules=shifttoggle
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 1000 password hashes with 1000 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 62 password hashes (are in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 938 password hashes with 938 different salts
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
Enabling duplicate candidate password suppressor
ace              (htrang)     
a                (astringer)     
ad               (bw)     
alb              (tstapleton)     
apart            (avandelay)     
award            (mcarrera)     
avert            (aherbert)     
blimp            (jferraro)     
braze            (wkhan)     
brawn            (jcuster)     
brush            (crhodes)     
cairn            (myanez)     
cease            (sbutcher)     
chalk            (mrush)     
coo              (nlie)     
corp             (sspivey)     
cozy             (rherring)     
copy             (kkennedy)     
crude            (tsalazar)     
crypt            (mhastings)     
dim              (mgreenberg)     
dogma            (mtoro)     
downy            (npatton)     
dulse            (sgregg)     
emcee            (jziegler)     
emcee            (ttimmons)     
eider            (jcraddock)     
exam             (bvasquez)     
fit              (lmarques)     
gao              (tsaeed)     
grill            (iraza)     
hath             (mparsons)     
heed             (mschneider)     
heady            (jcorrigan)     
hemp             (twatanabe)     
hymen            (bcurtis)     
houri            (lcoleman)     
jeer             (bmaria)     
jun              (bmcmillan)     
knack            (hrichardson)     
mind             (aoliva)     
opec             (hmcdaniel)     
octet            (asai)     
pew              (cwarren)     
plod             (kjenkins)     
plow             (lparr)     
prune            (thargrove)     
qua              (mkeen)     
prude            (devangelista)     
rabid            (jroot)     
regal            (mraafat)     
rerun            (asteen)     
reed             (foliveira)     
rood             (mheng)     
rill             (mmarchand)     
rue              (malexander)     
rule             (nbuchanan)     
rune             (datkinson)     
sept             (tlowry)     
sec              (jhairston)     
sept             (hhabib)     
shall            (nwatts)     
singe            (mwhite)     
sly              (tsellers)     
slap             (spena)     
soft             (swebster)     
soya             (qzhang)     
split            (acairns)     
stoat            (larroyo)     
stoop            (jmcneill)     
table            (lbray)     
tic              (tschmitz)     
tinge            (trobertson)     
tour             (isaleem)     
tube             (mpepper)     
u                (bcordova)     
wage             (tsteiner)     
wad              (ssams)     
weir             (sdyson)     
woozy            (amendez)     
zombi            (rdodd)     
Angry            (jbeckman)     
Anglo            (fgraham)     
Asia             (lvasquez)     
Batch            (slane)     
Bless            (dharden)     
Caddy            (dfrancois)     
Chore            (rriddle)     
Clone            (gchawla)     
Crude            (jeyre)     
Crepe            (janderson)     
Diode            (gsrivastava)     
Dozen            (jroux)     
Dona             (rwilkins)     
Dying            (cmedeiros)     
Erect            (mjohansen)     
Exam             (dmacias)     
Frank            (vvictor)     
Gauge            (ccake)     
Gnu              (kcarroll)     
High             (probertson)     
Hymn             (bmurray)     
Marge            (llake)     
Mask             (abolton)     
Mill             (inunez)     
Monte            (lhogan)     
Omit             (thatch)     
Oar              (daskew)     
Shut             (gsoni)     
Slug             (crichter)     
Shy              (atiwari)     
Site             (kmcginnis)     
Trace            (tmcleod)     
Tract            (ksimms)     
Tulip            (jweinstein)     
Upper            (nsamuels)     
aCre             (croman)     
cRier            (khammer)     
cRypt            (myoon)     
dUg              (pkale)     
hEp              (mgustafson)     
lAne             (drutherford)     
lOre             (smack)     
mEaly            (gstevenson)     
mOund            (sdahiya)     
rIce             (swhitman)     
rIsc             (smcintyre)     
sAppy            (mballard)     
sIlky            (fkhan)     
vOw              (bvilla)     
CHeep            (mborges)     
HUssy            (rhendrix) 
132g 0:00:09:38 0.01% (ETA: 2024-03-28 23:32) 0g/s 193.1p/s 162400c/s 162400C/s beNumb..blUsh
Use the "--show" option to display all of the cracked passwords reliably
Session aborted
codepath@lab000000:~/unit3$ sudo chown codepath:codepath cp_leak.txt
codepath@lab000000:~/unit3$ john --show cp_leak.txt
dweir:alice
jcraddock:eider
lvasquez:Asia
thargrove:prune
yfang:missy
htrang:ace
bvasquez:exam
astringer:a
jaltman:tatum
mheng:rood
rhendrix:HUssy
smack:lOre
amendez:woozy
rriddle:Chore
hmcdaniel:opec
sregmi:claus
pkale:dUg
mrush:chalk
bmcmillan:jun
crichter:Slug
jmcneill:stoop
lcoleman:houri
tmccabe:urban
tsteiner:wage
sdahiya:mOund
tsaeed:gao
mballard:sAppy
aoliva:mind
cwatson:adolf
kjenkins:plod
tzhao:psalm
aherbert:avert
asullivan:manda
gstevenson:mEaly
cwarren:pew
mmarchand:rill
lestes:nadie
rdodd:zombi
sdyson:weir
nlie:coo
jbuchanan:babby
cmedeiros:Dying
abolton:Mask
achong:elder
rkatz:lifes
jrandolph:beer
bmurray:Hymn
larroyo:stoat
jburnette:pluto
croman:aCre
jroux:Dozen
mmonte:jamez
jcuster:brawn
npatton:downy
nwatts:shall
malexander:rue
gchawla:Clone
inunez:Mill
eschroeder:kitty
rherring:cozy
trobertson:tinge
daskew:Oar
molsen:food
hcameron:tink
slane:Batch
rdonovan:camil
olawal:lunas
aspringer:tinka
llake:Marge
jroot:rabid
lmarques:fit
mborges:CHeep
mrogers:1432
mrivas:sonya
mtoro:dogma
swebster:soft
kmcginnis:Site
mraafat:regal
tsalazar:crude
czuniga:cooly
jhairston:sec
mgustafson:hEp
mkeen:qua
sgregg:dulse
ophillips:ipod
gsoni:Shut
kpatton:hello
mjohansen:Erect
hrichardson:knack
amedhat:amani
gsrivastava:Diode
lsims:78945
kcarroll:Gnu
tschmitz:tic
pschaefer:jaden
vvictor:Frank
jcorrigan:heady
jweinstein:Tulip
devangelista:prude
isaleem:tour
tstapleton:alb
sryder:usagi
swhitman:rIce
wkhan:braze
mschneider:heed
mlodge:1985
sjayne:nacho
sjolly:farid
rwilkins:Dona
mhastings:crypt
nsamuels:Upper
bcurtis:hymen
afahad:gohan
bcordova:u
ssams:wad
jlao:marsh
crhodes:brush
jbeckman:Angry
tlowry:sept
smanalo:cleo
bw:ad
lstuart:tasty
twatanabe:hemp
qzhang:soya
mashton:ashia
epetersen:agent
dmacias:Exam
lparr:plow
csloan:lisha
thatch:Omit
jlyn:yoyo
jziegler:emcee
asteen:rerun
ttripp:bravo
myanez:cairn
probertson:High
myoon:cRypt
lbray:table
cworkman:klara
cvelazquez:nick
mparsons:hath
avandelay:apart
asai:octet
mpepper:tube
hnoor:thanh
jferraro:blimp
ngordon:crime
acairns:split
tmcleod:Trace
foliveira:reed
dkohler:stone
jeyre:Crude
bvilla:vOw
ttimmons:emcee
lpadilla:lola
rbelanger:orton
dfrancois:Caddy
igarza:bingo
lbernardo:pablo
mwhite:singe
hhabib:sept
cdunn:vijay
fkhan:sIlky
jhui:clyde
tklein:bread
drutherford:lAne
smcintyre:rIsc
ksimms:Tract
mcarrera:award
kkennedy:copy
nbuchanan:rule
janderson:Crepe
lhogan:Monte
sspivey:corp
achoy:siska
fgraham:Anglo
jblair:taryn
bmaria:jeer
ecarey:elmo
seast:amaya
iraza:grill
spena:slap
asinghania:elsie
tsellers:sly
jgodinez:atena
sbutcher:cease
hmishra:rohan
skhawaja:teeny
datkinson:rune
mgreenberg:dim
khammer:cRier
ccake:Gauge
dharden:Bless
atiwari:Shy

194 password hashes cracked, 806 left
codepath@lab000000:~/unit3$ john --mask=?d?u?l?l cp_leak.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 1000 password hashes with 1000 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 194 password hashes (are in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 806 password hashes with 806 different salts
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
0g 0:00:01:08 8.52% (ETA: 01:17:23) 0g/s 220.1p/s 180993c/s 180993C/s 5Uri..7Esi
Session aborted
codepath@lab000000:~/unit3$ john cp_leak.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 1000 password hashes with 1000 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 194 password hashes (are in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 806 password hashes with 806 different salts
Will run 2 OpenMP threads
Proceeding with single, rules:Single
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
Warning: Only 11 candidates buffered for the current salt, minimum 96 needed for performance.
Warning: Only 14 candidates buffered for the current salt, minimum 96 needed for performance.
Almost done: Processing the remaining buffered candidate passwords, if any.
Warning: Only 31 candidates buffered for the current salt, minimum 96 needed for performance.
Warning: Only 33 candidates buffered for the current salt, minimum 96 needed for performance.
0g 0:00:00:23 DONE 1/3 (2023-12-13 01:06) 0g/s 33840p/s 36476c/s 36476C/s nabraham1907..Nabraham1900
Proceeding with wordlist:/snap/john-the-ripper/current/run/password.lst
Enabling duplicate candidate password suppressor
loki             (nbowman)     
izzy             (nmohd)     
1952             (dhuber)     
eieio            (kgomes)     
qwe              (jplatt)     
789              (abartlett)     
sal              (bgaines)     
ang              (jsinclair)     
1907             (anewby)     
4567             (ayarbrough)     
1616             (smuir)     
ggg              (ddrake)     
lilou            (kkirk)     
1107             (mfritz)     
kokot            (mmcclendon)     
1227             (ypatel)     
8080             (nweber)     
1127             (rkaka)     
2510             (abrantley)     
1914             (lhaynes)     
na               (ecorpuz)     
1512             (apaige)     
1200             (dbuchanan)     
1406             (nlynn)     
1909             (jdhillon)     
7575             (akanwal)     
2405             (ssohail)     
1501             (jbelanger)     
2552             (mcrabtree)     
2811             (sraja)     
0214             (mhabib)     
mohan            (brobb)     
2704             (nnixon)     
0507             (tlopez)     
beto             (avillar)     
2030             (mschaefer)     
0607             (hdaniels)     
juno             (fling)     
suman            (scyr)     
lillo            (dhull)     
nad              (mtalbot)     
2527             (mfowler)     
1080             (pvictor)     
dong             (hrichards)     
2232             (aloh)     
1721             (yfeng)     
1721             (sramalingam)     
1721             (dmoon)     
gege             (kdunn)     
0925             (nmansour)     
1181             (mgaffney)     
9292             (syamamoto)     
0824             (pfletcher)     
idkfa            (ldaniel)     
robi             (dsellers)     
1828             (kbraun)     
rara             (cmorin)     
8910             (ljameson)     
2254             (rcote)     
kaja             (dmesser)     
uuu              (rfeliciano)     
myass            (iperera)     
kemal            (mgibbs)     
myers            (despinoza)     
tron             (wevans)     
5213             (senriquez)     
2343             (jwalden)     
1791             (kwatkins)     
3800             (ksheldon)     
2578             (dswann)     
6644             (zyoung)     
71g 0:00:15:43 0.00% 2/3 (ETA: 2024-10-11 23:20) 0g/s 1067p/s 164190c/s 164190C/s thekid123..ibanez666
Use the "--show" option to display all of the cracked passwords reliably
Session aborted
codepath@lab000000:~/unit3$ sudo chown codepath:codepath cp_leak.txt
codepath@lab000000:~/unit3$ john --show cp_leak.txt
dweir:alice
jcraddock:eider
lvasquez:Asia
thargrove:prune
yfang:missy
htrang:ace
bvasquez:exam
mfritz:1107
astringer:a
jaltman:tatum
mheng:rood
mmcclendon:kokot
rhendrix:HUssy
smack:lOre
amendez:woozy
rriddle:Chore
sraja:2811
hmcdaniel:opec
sregmi:claus
kbraun:1828
pkale:dUg
mrush:chalk
bmcmillan:jun
sramalingam:1721
ljameson:8910
crichter:Slug
jmcneill:stoop
lcoleman:houri
tmccabe:urban
tsteiner:wage
sdahiya:mOund
cmorin:rara
tsaeed:gao
mballard:sAppy
mschaefer:2030
aoliva:mind
cwatson:adolf
kjenkins:plod
tzhao:psalm
aherbert:avert
asullivan:manda
gstevenson:mEaly
cwarren:pew
mmarchand:rill
lestes:nadie
rdodd:zombi
lhaynes:1914
fling:juno
sdyson:weir
wevans:tron
nlie:coo
jbuchanan:babby
cmedeiros:Dying
abolton:Mask
achong:elder
rkatz:lifes
jrandolph:beer
bmurray:Hymn
apaige:1512
larroyo:stoat
jburnette:pluto
croman:aCre
mhabib:0214
yfeng:1721
rfeliciano:uuu
smuir:1616
jroux:Dozen
dsellers:robi
bgaines:sal
mmonte:jamez
ldaniel:idkfa
jcuster:brawn
npatton:downy
nwatts:shall
malexander:rue
kgomes:eieio
mcrabtree:2552
gchawla:Clone
inunez:Mill
eschroeder:kitty
rherring:cozy
trobertson:tinge
daskew:Oar
molsen:food
hcameron:tink
slane:Batch
rdonovan:camil
olawal:lunas
aspringer:tinka
llake:Marge
dhuber:1952
despinoza:myers
jroot:rabid
lmarques:fit
mborges:CHeep
mrogers:1432
nnixon:2704
mrivas:sonya
mtoro:dogma
nbowman:loki
swebster:soft
kmcginnis:Site
mraafat:regal
tsalazar:crude
czuniga:cooly
jhairston:sec
mgustafson:hEp
mkeen:qua
tlopez:0507
sgregg:dulse
ophillips:ipod
gsoni:Shut
ksheldon:3800
kpatton:hello
pfletcher:0824
mjohansen:Erect
hrichardson:knack
amedhat:amani
gsrivastava:Diode
dswann:2578
lsims:78945
kcarroll:Gnu
hdaniels:0607
tschmitz:tic
pschaefer:jaden
ssohail:2405
avillar:beto
vvictor:Frank
dmoon:1721
jcorrigan:heady
jweinstein:Tulip
devangelista:prude
senriquez:5213
isaleem:tour
akanwal:7575
tstapleton:alb
sryder:usagi
swhitman:rIce
wkhan:braze
mschneider:heed
hrichards:dong
mlodge:1985
sjayne:nacho
mfowler:2527
sjolly:farid
rwilkins:Dona
mhastings:crypt
nsamuels:Upper
jsinclair:ang
bcurtis:hymen
afahad:gohan
bcordova:u
ssams:wad
jlao:marsh
nlynn:1406
crhodes:brush
jbeckman:Angry
tlowry:sept
dhull:lillo
jbelanger:1501
smanalo:cleo
kwatkins:1791
bw:ad
lstuart:tasty
rkaka:1127
twatanabe:hemp
qzhang:soya
mashton:ashia
epetersen:agent
dmacias:Exam
kdunn:gege
lparr:plow
csloan:lisha
thatch:Omit
jlyn:yoyo
abrantley:2510
jziegler:emcee
asteen:rerun
ayarbrough:4567
ttripp:bravo
myanez:cairn
dbuchanan:1200
probertson:High
myoon:cRypt
lbray:table
cworkman:klara
cvelazquez:nick
mparsons:hath
mgaffney:1181
avandelay:apart
asai:octet
abartlett:789
mpepper:tube
hnoor:thanh
ecorpuz:na
jferraro:blimp
brobb:mohan
jwalden:2343
ngordon:crime
acairns:split
tmcleod:Trace
foliveira:reed
kkirk:lilou
dkohler:stone
jeyre:Crude
bvilla:vOw
ttimmons:emcee
lpadilla:lola
rbelanger:orton
dfrancois:Caddy
igarza:bingo
lbernardo:pablo
mwhite:singe
dmesser:kaja
hhabib:sept
cdunn:vijay
fkhan:sIlky
jhui:clyde
tklein:bread
nmansour:0925
drutherford:lAne
smcintyre:rIsc
ksimms:Tract
pvictor:1080
mcarrera:award
mtalbot:nad
kkennedy:copy
nbuchanan:rule
janderson:Crepe
anewby:1907
aloh:2232
lhogan:Monte
sspivey:corp
syamamoto:9292
achoy:siska
fgraham:Anglo
jblair:taryn
ypatel:1227
scyr:suman
bmaria:jeer
ecarey:elmo
seast:amaya
iraza:grill
spena:slap
asinghania:elsie
tsellers:sly
nweber:8080
jgodinez:atena
rcote:2254
sbutcher:cease
iperera:myass
hmishra:rohan
skhawaja:teeny
zyoung:6644
datkinson:rune
jplatt:qwe
jdhillon:1909
nmohd:izzy
mgreenberg:dim
mgibbs:kemal
ddrake:ggg
khammer:cRier
ccake:Gauge
dharden:Bless
atiwari:Shy

265 password hashes cracked, 735 left
