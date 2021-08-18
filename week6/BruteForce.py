#!/usr/bin/python3
import hashlib
import string
from itertools import chain,product

#hidden password hash
passwordHash="8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"; 

#Brute force to generate possible combination of letters 
#From https://stackoverflow.com/questions/11747254/python-brute-force-algorithm
#Accessed on 18/8/2021
def bruteforce(charset,maxLegth):
    return (''.join(candidate)
        for candidate in chain.from_iterable(product(charset,repeat=i)
        for i in range(1,maxLegth +1)))

#loop through the generated list of words
#[a-z] and 6 characters Maximum 
for word in bruteforce(string.ascii_lowercase, 6):
        #hash the word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")
        #if the hash is the same as the correct password's hash then we have cracked the password!
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! It was {word}")
            break
     