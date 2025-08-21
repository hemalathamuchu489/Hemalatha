#Reverse a given string without using built in functions
org=input("")
rev=""
for char in org:
 rev=char+rev 
print("reverse:",rev)



# if string is palindrome or not
 def is_palin(word): 
 rev=word[::-1]
 if text==rev:
 return True
 else:
 return False
text=input("")
if is_palin(text): 
 print("palindrome")
else:
 print("not")




#count no.of vowels and no.of consonants in a string
text=input("")
vowels="aeiouAEIOU"
vowel=0
consonants=0
for char in text:
 if char.isalpha():
 if char in vowels:
 vowel+=1
 else:
 consonants +=1
print("no.of vowels:",vowel)
print("no.of consonanats:",consonants)



 
#remove all spaces in a string
def remv_spaces(s):
 return s.replace(" ","")
text=input("")
res=remv_spaces(text)
print("String without spaces:",res)




#count freq of each char
def count_char(s):
 freq={} 
 for char in s:
 if char in freq:
 freq[char]+=1
 else:
 freq[char]=1
 return freq
text=input("")
res=count_char(text)
print(res)
