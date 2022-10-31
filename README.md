# vowel-quant
A small script for estimating the number of vowels in a user inputted word. Vowels include a, e, i, o, u and sometimes y. 

# How to Use
Open the script in Rstudio and ensure that you have set your working directory to the file where it is located. Hit the source button. You will be prompted to enter a word in the console. In order to run the script, you must have the package `tidyverse` installed. 

# A note
This script will not count "y" as a vowel if it is at the end or middle of a syllable in a word. It turns out that identifying syllables in a word is a decent challenge.  It will, however count it as a vowel if the word doesn't contain any of the conventional ones. It will also recognize  y as a vowel if it is the last letter in a word. 
