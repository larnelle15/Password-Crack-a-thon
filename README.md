# Password-Crack-a-thon
For this project, I'll be working with a (fictional) leaked password file, modeled after famous data breaches such as the 2012 LinkedIn Hack and 2016 Yahoo Data Breaches. In both of these incidents, usernames and hashed passwords were leaked in simple txt files, making people's private data available to anyone who could crack the hashes.

I'm going to crack as many hashes as possible, so those passwords can be removed from production and those users' accounts secured with the help of John the ripper commands

<img width="720" alt="Screen Shot 2023-12-01 at 12 25 23 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/93d4092e-0bfd-4e1c-89eb-2f703b6d38c7">
 
For more information on how to use John the ripper and its features visit this link, https://www.openwall.com/john/doc/

In this project I will be writing my own john commands to...
use multiple different wordlists
use built-in john rulesets
use custom-made rules
And at the end I will communicate my findings using the ~/snap/john-the-ripper/610/.john/john.pot file

One remarkable feature of John is that it can autodetect the encryption for common formats. This will save me a lot of time in researching the hash formats and finding the correct tool to crack them.

John is also a dictionary-based tool. This means that it works with a dictionary of common passwords to compare it with the hash in hand. A common password list called rockyou.txt is what we will use among different others with this project.
While you can use popular wordlists like RockYou, John also has its own set of wordlists with thousands of common passwords. This makes John very effective when cracking systems with weak passwords.

This is how John works by default:

recognize the hash type of the current hash
generate hashes on the fly for all the passwords in the dictionary
stop when a generated hash matches the current hash.

In this project I will begin by testing my skills when it comes to using john as a tool
I will test using all of the three modes John offers me. You will be using one of these three for my main prject goal of cracking as many commands as possible.

1. Single crack mode
2. Wordlist mode
3. Incremental mode

With kali linux, john is usually pre-installed but since I am using an Ubuntu VM the command to get John from the apt source is;

$ apt install John

The john help command is good for confirming if your installation of John is working and here is the command and its output;

$ john -h

<img width="716" alt="Screen Shot 2023-12-01 at 12 59 58 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/acb121b2-2569-4834-a227-365ba60b8500">

Here's a link to john's custom rules syntax, https://www.openwall.com/john/doc/RULES.shtml
Now, you might be wondering how and where I'm going find the passwords to crack, I have been provided a password list by codepath.org with 1000 password leaks to use called cpleak.txt that I have included in this project. Now time to get down to business!    






