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
Unit 3 has all of the files we will be working on throughout this project.
I'll list the files and find the crackfiles.zip
(ls crackfiles.zip)
<img width="423" alt="Screen Shot 2023-12-03 at 8 28 13 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/7f02eff3-705f-457b-ae24-e9e8b718a1a2">
I'll now go ahead and unzip the folder in order to take a look at what I have:
(unzip crackfiles.zip) 
All of these files that have been shown are password files as seen below. I'll alos download a wordlist that is famous in the world of password cracking. I'll download the rockyou wordlist using the following command:
(wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt)

<img width="904" alt="Screen Shot 2023-12-03 at 8 29 07 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/a7133f27-5c32-4d40-b31a-600685d28ab5">

Now we have the rockyou.txt wordlist, I'll use the ls command to view the file

<img width="627" alt="Screen Shot 2023-12-03 at 8 29 26 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/61fc6d29-b9e5-4618-a44c-6478ac9f1701">

I'll now explore the rockyou wordlist by running the following command:
(less -N ./rockyou.txt)
The -N flag makes line numbers show up. If you don't want line numbers, you can run less without it.
Here is a display of the famous rockyou wordlist:

<img width="138" alt="Screen Shot 2023-12-03 at 8 31 25 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/f299ec17-1c11-4bf7-9d09-426b9dddd4e1">

Now that I'm here I'll do some fun searching by using the & key. Let me try and type &puppy and see the results I'll get:

<img width="132" alt="Screen Shot 2023-12-03 at 8 31 47 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/c4c4a126-c7a2-40d5-a4e1-575fb79bed9d">

Really crazy, the rockyou wordlist is so big with many passwords to look and search from. The only problem with it being big though, is it takes a long time to run so we'll use a smaller wordlist which is included in the unit 3 files. I'll use the (less -N lower.lst) to see the lower list wordlist.

<img width="772" alt="Screen Shot 2023-12-03 at 8 36 26 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/e56fa684-8878-4b34-815b-09b25ddf1eef">

Okay, now that I've looked at the wordlists, It's time to start cracking the passwords
We'll start with single crack mode:
Single crack is a mode that uses information about the user (stored in the GECOS fields) to make educated guesses about the password.

GECOS fields aren't commonly used today, but they could also contain information like the user's full name, email address, and phone numbers.

If this data exists, John will use elements from all these fields to make guesses.
































