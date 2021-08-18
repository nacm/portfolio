#!/usr/bin/python3
import hashlib
import string
from itertools import chain,product

#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

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
     