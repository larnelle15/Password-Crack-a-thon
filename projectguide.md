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
All of these files that have been shown are password files as seen below. I'll also download a wordlist that is famous in the world of password cracking. I'll download the rockyou wordlist using the following command:
(wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt) Sorry If that command comes up as a link!

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

I'll now use the crackA.txt file. My first john command for single crack mode will be (john --single crackA.txt) Here the results below:

<img width="677" alt="Screen Shot 2023-12-03 at 8 58 48 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/0692a02a-7e3f-41e2-a53e-99aac73b5782">

The users, squirtle, charmander and bulbasaur are actually pokemon chracters! With the result above you can see that we have cracked all three passwords. Now lets view them by running the john --show crackA.txt command
<img width="665" alt="Screen Shot 2023-12-03 at 8 57 20 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/610656f1-ff69-46f2-8e9c-05457a76084e">

That's single crack mode for you! Next, i'll be using wordlist mode and here we will be using the crackB.txt files. 
John's wordlist mode will take any wordlist as a dictionary and try every password in there. (It will also do basic mangling, trying different mixes of upper/lowercase letters, etc.) We are going to try and crack the passwords of Jim, Pam and Dwight. Jim's password is crackable with the password dircetly, Let's start with this (john --wordlist=lower.lst crackB.txt)

<img width="668" alt="Screen Shot 2023-12-03 at 9 03 16 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/490c16a5-fd20-4bb2-b942-f72f3fb8c9e4">

Alright I got Jim, time for Dwight, I'll use the command (john --wordlist=lower.lst crackB.txt --rules=l33t)

<img width="668" alt="Screen Shot 2023-12-03 at 9 04 42 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/ab2d5eb7-319a-44c4-80d8-a3ed68d09239">

Pam tried mixing her upper case and lower case letters but guess what, I still got it by using the following command (john --wordlist=lower.lst crackB.txt --rules=shifttoggle)

<img width="697" alt="Screen Shot 2023-12-03 at 9 06 03 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/a17f2623-ad31-489a-b1b0-e16a915fa430">

All passwords have been cracked!

Time for the last mode, Incremental mode. 
Finally, there's incremental. This mode is the most powerful... but also the most slow.

Have you ever tried to guess someone's PIN number by just trying things? 1111, 1112, 1113, etc.. Well, John's incremental mode does this at a huge scale.

By default, it will try every legal permutation of all 97 ASCII characters up to 13 characters long. That's over 67 septillion possibilities, and will take a really long time.
To speed things up, we can make some educated guesses about how people usually construct their passwords.

The three passwords we will be cracking in this mode are pinball, pacman and frogger. We will be using the crackC.txt file. The pinball password is strictly numeric and is 4-6 digits long, Here is the command:
(john --incremental=digits --min-length=4 --max-length=6 crackC.txt)

<img width="667" alt="Screen Shot 2023-12-03 at 9 13 03 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/698cf23d-385a-4cd2-a918-62abb7d86c98">

Now we will work on the pacman password, this password follows a common pattern: A number, an uppercase letter, and some lowercase letters. To do this, I'll use a mask. Here I will use this command(john --mask=?d?u?l?l crackC.txt)
Where '?u' represents an uppercase letter, '?l' represents a lowercase letter, and '?d' is a digit.
<img width="666" alt="Screen Shot 2023-12-03 at 9 19 11 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/529c11b9-3b33-4858-8cb1-56813f6e6070">

And now finally frogger, this password follows an even more common pattern: A 4-letter word, a number, and an exclamation mark! (Ever make a password that resembles that?)
I'll be using the following command(john --mask=?l?l?l?l?d! crackC.txt)
<img width="664" alt="Screen Shot 2023-12-03 at 9 16 39 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/b55b17d5-3e0a-4c1b-9164-8ab716b19f23">

Ihave successfully cracked all the games' passwords! I'll run john --show crackC.txt to view them.

<img width="294" alt="Screen Shot 2023-12-03 at 9 20 22 PM" src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/cf791db3-225f-49fc-b543-8f26aa1590bc">

Finally, if you just need it cracked and don't care about optimizing it... John does have an "auto-run" mode.

It will try the following, in order, until it is successful:

single-crack mode
wordlist mode (using John's built-in password.lst wordlist)
incremental mode (brute-force)
This is the simplest mode to invoke. Simply run
(john crackA.txt)

I've already seen that John stores cracked passwords. To check what I've already cracked for a file, I can use the --show option when I run John, here's the command(john --show crackA.txt)

<img width="463" alt="Screen Shot 2023-12-03 at 9 25 15 PM" 
src="https://github.com/larnelle15/Password-Crack-a-thon/assets/139686202/2cb8765f-5988-4a35-80b1-d0945d2cf74a">

John keeps all the cracked passwords in the John pot file(~~/snap/john-the-ripper/610/.john/john.pot)
And, there you go. Now that we have implemented the use of all the password cracking modes that John has to offer. It's time to start the main project.
















































