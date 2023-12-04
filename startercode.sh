codepath@lab000000:~/unit3$ ls crackfiles.zip
crackfiles.zip
codepath@lab000000:~/unit3$ wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
--2023-12-04 01:39:45--  https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
Resolving github.com (github.com)... 140.82.112.4
Connecting to github.com (github.com)|140.82.112.4|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://objects.githubusercontent.com/github-production-release-asset-2e65be/97553311/d4f580f8-6b49-11e7-8f70-7f460f85ab3a?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231204%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231204T013945Z&X-Amz-Expires=300&X-Amz-Signature=e6bd4b55314b64c179369fa869892c09f4b35e8821da898f7771ea5cb5a40a0f&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=97553311&response-content-disposition=attachment%3B%20filename%3Drockyou.txt&response-content-type=application%2Foctet-stream [following]
--2023-12-04 01:39:45--  https://objects.githubusercontent.com/github-production-release-asset-2e65be/97553311/d4f580f8-6b49-11e7-8f70-7f460f85ab3a?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231204%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231204T013945Z&X-Amz-Expires=300&X-Amz-Signature=e6bd4b55314b64c179369fa869892c09f4b35e8821da898f7771ea5cb5a40a0f&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=97553311&response-content-disposition=attachment%3B%20filename%3Drockyou.txt&response-content-type=application%2Foctet-stream
Resolving objects.githubusercontent.com (objects.githubusercontent.com)... 185.199.108.133, 185.199.111.133, 185.199.110.133, ...
Connecting to objects.githubusercontent.com (objects.githubusercontent.com)|185.199.108.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 139921497 (133M) [application/octet-stream]
Saving to: ‘rockyou.txt.1’

rockyou.txt.1                           100%[============================================================================>] 133.44M   102MB/s    in 1.3s    

2023-12-04 01:39:47 (102 MB/s) - ‘rockyou.txt.1’ saved [139921497/139921497]

codepath@lab000000:~/unit3$ ls
cp_leak.txt  crackA.txt  crackB.txt  crackC.txt  crackChallenge.txt  crackfiles.zip  lower.lst  rockyou.txt  rockyou.txt.1
      1 123456
      2 12345
      3 123456789
      4 password
      5 iloveyou
      6 princess
      7 1234567
      8 rockyou
      9 12345678
     10 abc123
     11 nicole
     12 daniel
     13 babygirl
     14 monkey
     15 lovely
     16 jessica
     17 654321
     18 michael
     19 ashley
     20 qwerty
     21 111111
     22 iloveu
     23 000000
     24 michelle
     25 tigger
     26 sunshine
     27 chocolate
     28 password1
     29 soccer
     30 anthony
     31 friends
     32 butterfly
     33 purple
     34 angel
     35 jordan
     36 liverpool
     37 justin
     38 loveme
     39 fuckyou
     40 123123
     41 football
     42 secret
rockyou.txt
&puppy
   1556 puppy
   1647 puppylove
   2769 puppy1
   3412 puppys
   3664 puppydog
   8463 puppyluv
  11010 puppy123
  13687 puppylove1
  15079 puppy2
  16649 puppylover
  18461 puppy12
  29716 puppy7
  30303 mypuppy
  33801 puppys1
  36671 puppy3
  37423 puppy13
  39028 puppypower
  39029 puppy5
  41798 puppydog1
  43720 puppy101
  49305 puppy6
  50635 puppy11
  51997 puppy10
  52878 1puppy
  54854 puppylove2
  58057 puppy01
  59828 puppy9
  61571 puppy8
  61572 puppy14
  62337 cutepuppy
  72671 puppygirl
  73346 hushpuppy
  87979 puppydogs
  87980 puppy23
  91754 puppyluv1
  91755 puppy!
  95774 puppy4
 100167 puppy16
 110151 puppychow
 110152 puppy07
 110998 lovepuppy
 115908 puppy77
less -N lower.lst
     1 #!comment: This list has been compiled by Solar Designer of Openwall Project,
      2 #!comment: http://www.openwall.com/wordlists/
      3 #!comment:
      4 #!comment: Input wordlist files:
      5 #!comment: 10001fr.equ, 366often.mis (mwords.tar.gz) -
      6 #!comment:  Moby (tm) Words II by Grady Ward
      7 #!comment: englex-dict.gz - Don Olivier, Harvard School of Public Health
      8 #!comment: pocket-dic.gz - "pocket dictionary"
      9 #!comment: special.eng.gz - "Special English", via Rick Harrison
     10 #!comment: wordset_4k.c - originally from a passphrase generator on sci.crypt
     11 a
     12 aardvark
     13 abaci
     14 aback
     15 abacus
     16 abaft
     17 abalone
     18 abandon
     19 abandoned
     20 abase
     21 abash
     22 abate
     23 abatement
     24 abatis
     25 abattoir
     26 abbacy
     27 abbe
     28 abbess
     29 abbey
     30 abbot
     31 abbreviate
     32 abbreviation
     33 abc
     34 abdias
     35 abdicate
     36 abdomen
     37 abdominal
     38 abduct
     39 abeam
     40 abecedarian
     41 abed
     42 aberrance

codepath@lab000000:~/unit3$ john --single crackA.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
kantograss       (bulbasaur)     
waterSquirtle    (squirtle)     
charizard22      (charmander)     
3g 0:00:00:00 DONE (2023-12-04 01:55) 3.846g/s 12303p/s 12307c/s 12307C/s charizardfire83..charmander23
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --show crackA.txt
squirtle:waterSquirtle:1001:1001:blastoise,,,water:/home/squirtle:/bin/bash
charmander:charizard22:1001:1001:charizard,,,fire:/home/charmander:/bin/bash
bulbasaur:kantograss:1001:1001:venusaur,kanto,,grass:/home/charmander:/bin/bash

3 password hashes cracked, 0 left
codepath@lab000000:~/unit3$ john --wordlist=lower.lst crackB.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
paper            (jim)     
1g 0:00:00:01 DONE (2023-12-04 01:58) 0g/s 18005p/s 47632c/s 47632C/s yon..zymase
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --wordlist=lower.lst crackB.txt --rules=l33t
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 1 password hash (is in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 2 password hashes with 2 different salts
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
Enabling duplicate candidate password suppressor
b33t             (dwight)     
1g 0:00:00:29 DONE (2023-12-04 02:03) 0g/s 38527p/s 39707c/s 39707C/s 14m3nt4ti0n$..Z3410u$
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --wordlist=lower.lst crackB.txt --rules=shifttoggle
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 2 password hashes (are in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 1 password hash
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
Enabling duplicate candidate password suppressor
tEaPoT           (pam)     
1g 0:00:00:19 DONE (2023-12-04 02:05) 0g/s 53476p/s 53476c/s 53476C/s tAiLcOat..tHrEaDy
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --incremental=digits --min-length=4 --max-length=6 crackC.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
496821           (pinball)     
1g 0:00:00:57 DONE (2023-12-04 02:10) 0g/s 19463p/s 56036c/s 56036C/s 68055..68716
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --mask=?d?u?l?l crackC.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 1 password hash (is in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 2 password hashes with 2 different salts
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
8Bit             (pacman)     
1g 0:00:00:04 DONE (2023-12-04 02:12) 0g/s 42868p/s 56261c/s 56261C/s 6Xxq..7Qqq
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --mask=?l?l?l?l?d! crackC.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 2 password hashes (are in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
Remaining 1 password hash
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, 'h' for help, almost any other key for status
bugs7!           (frogger)     
1g 0:00:01:15 DONE (2023-12-04 02:16) 0g/s 56456p/s 56456c/s 56456C/s yngs7!..rjgs7!
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
codepath@lab000000:~/unit3$ john --show crackC.txt
pinball:496821
pacman:8Bit
frogger:bugs7!

3 password hashes cracked, 0 left
codepath@lab000000:~/unit3$ john crackA.txt
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-opencl"
Use the "--format=md5crypt-opencl" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 3 password hashes with 3 different salts (md5crypt, crypt(3) $1$ (and variants) [MD5 512/512 AVX512BW 16x3])
Cracked 3 password hashes (are in /home/codepath/snap/john-the-ripper/610/.john/john.pot), use "--show"
No password hashes left to crack (see FAQ)
codepath@lab000000:~/unit3$ john --show crackA.txt
squirtle:waterSquirtle:1001:1001:blastoise,,,water:/home/squirtle:/bin/bash
charmander:charizard22:1001:1001:charizard,,,fire:/home/charmander:/bin/bash
bulbasaur:kantograss:1001:1001:venusaur,kanto,,grass:/home/charmander:/bin/bash

3 password hashes cracked, 0 left
codepath@lab000000:~/unit3$ john --status
fopen: /home/codepath/snap/john-the-ripper/610/.john/john.rec: No such file or directory 
