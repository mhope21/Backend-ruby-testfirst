#write your code here
# method takes a string, checks if the first letter of the word is a vowel, if so it adds 'ay'
# if the word begins with a consonant, then it finds the first vowel, takes the letters before that
# and adds them to the end of the word, then adds 'ay', finally all words joined with a space between
def translate(str)
  # vowels = ['a','e','i','o','u']
  # words = str.split
  # translated_words = words.map do |word|
  #   if vowels.include?(word[0])
  #     word + 'ay'
  #   else
  #     # handles the case where the first syllable contains qu, either at the beginning or with consonant
  #     # in front
  #     if word.start_with?('qu')
  #       word[2..-1] + word[0..1] + 'ay'
  #     elsif word[1..2] == 'qu'
  #       word[3..-1] + word[0..2] + 'ay'
  #     else
  #       first_vowel = word.index(/[aeiou]/)
  #       word[first_vowel..-1] + word[0...first_vowel] + 'ay'
  #     end        
  #   end
  # end
  # translated_words.join(' ')  
  str.split.map do |word|
    # if the `word` matches the given regex 
    # (`=~` is regex comparison operator)
    # `/^[aeiou]/`  means a string that starts with (`^`) any character within the brackets
    if word =~ /^[aeiou]/
      word + "ay"
    else
     # Otherwise, call `#sub` on the `word`
     # (see below for explanation of this regex)
      word.sub(/(^[^aeio]*qu|^[^aeiou]+)(.*)/, '\2\1ay')
    end
  end.join(" ")
end

# translate("nose")
# translate("apple pie")
# translate("cheese pizza")