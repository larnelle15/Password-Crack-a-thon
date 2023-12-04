Before I begin the main project, I wanted to implement single crack, wordlist and incremental modes. I'm going use john the ripper password cracking tool.
John is generally run locally on your testing computer it has options for distributing the guessing actions across multiple machines to coordinate running the algorithm across many more processors without duplicating effort (as in if one computer has already guessed or is tasked to guess 'Password1234' none of the others are tasked to try it).
I'm using this starter project to kind of identify Johns limitations, run john against a hashed Linux password file and see the difference in speed between brute-force and educated guessing. The startercode.sh file will have all the code implemented today as well as its results.

The first step should be making sure that I have john installed in my Ubuntu VM but I will already assume that it is not installed and run the following command:
(sudo apt-get purge john -y && sudo snap install john-the-ripper && sudo reboot)

<img width="898" alt="Screen Shot 2023-12-03 at 10 37 20 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/0e85e839-470b-446d-895a-61e17135bc56">

This reboot closed my rdp session so I had to start a new one and I'll begin the project officially. 

Passwords will be stored and passed as hashes, never in plain text. Hashes are one-way calculations done against a file that always have the same result for the same file. This means something neat if you're a secure resource:

You don't need to store my password, just its hash!
For example, let's say I make an account on your server:
username: admin
password: chinchillaFriend42
Rather than risk storing my password directly, you just make a note that my user's password, chinchillaFriend42, hashes to 6ccf.
Later, I try to log in, and submit a password: chinchillaEnemy42, which hashes to 29da
By comparing the hashes, you can figure out if I entered the correct password!
(In this case, I did not, since 6ccf does not equal 29da. Alas!)

I have a folder named unit3 and now i am going to navigate to it on my home directory.
(cd unit 3)
Unit 3 has all of the files we will be working on throughout this project





