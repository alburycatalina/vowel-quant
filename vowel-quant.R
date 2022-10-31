
# Vowel quant - a script for counting how many vowels are in a user-iputted word
# Note - this script will not count y as a vowel if it is at the end or middle of a syllable in a word

# Load required package
library(tidyverse)


# take user input for a word
word <- readline(prompt = "This script counts the number of vowels in a word. Enter a word:");



# Make lowercase just in case
word <- tolower(word) 

# Use str_split to count "normal" vowels (a, e, i, o, u)
nNormalVowels <- str_count(word, "[aeoiu]")

# Convert word to character vector
letters <- strsplit(word, "")
letters_clean <- data.frame(letters)
colnames(letters_clean) <- "character"

# Create an empty vector
letters_clean$is_y <- NULL

# Make the vector list TRUE if that letter's placement is a y and FALSE if not 
for (i in 1:nrow(letters_clean)){
  if (letters_clean$character[i] == "y"){
    letters_clean$is_y[i] <- TRUE
  }
  else{
    letters_clean$is_y[i] <- FALSE
  }
}

# If the last letter is y, add a vowel
if (letters_clean$is_y[nrow(letters_clean)] == TRUE){
  nNormalVowels <- nNormalVowels + 1
}

# If there are no normal vowels and the word contains y, add a vowel
if (nNormalVowels == 0 &&  TRUE %in% letters_clean$is_y){
  nNormalVowels <- nNormalVowels + 1 
}


#  Give user their answer based on how many vowels are in the word
if (nNormalVowels == 0){
  cat("The word", word,"has no vowels!")
} else if (nNormalVowels == 1) {
  cat("The word", word,"has one vowel :-)")
} else if (nNormalVowels >= 2) {
  cat("The word", word,"has", nNormalVowels ,"vowels :-)") 
}


  
