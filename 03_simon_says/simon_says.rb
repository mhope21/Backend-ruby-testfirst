#write your code here
def echo(str)
  "#{str}"
end

def shout(str)
  "#{str}".upcase
end

# method takes a string and sets initial value of times to 2, it makes a new array with times elements
# each element is set to the value of string
def repeat(str, times = 2)
  Array.new(times, str).join(' ')
end

# method takes a string and sets the default index of range to 1, returns string in range 0 to char(default or given)
def start_of_word(str, char = 1)
  str[0, char]
end

def first_word(str)
  str.split.first
end

# method takes a string, iterates over each word, if there is only 1, it capitalizes first letter
# if more than 1, it capitalizes the first letter of each word, excluding little words 
def titleize(str)
  little_words = %w{a an and the or for of nor over}
  words = str.split
  titled_words = words.map.with_index do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end
  titled_words.join(' ')
end