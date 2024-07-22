class Book
# write your code here
  attr_reader :title

  def initialize(title = "")
   @title = title
  end

  def title=(new_title)
    @title = titleize(new_title)
  end
  

  # method takes a string, iterates over each word, if there is only 1, it capitalizes first letter
  # if more than 1, it capitalizes the first letter of each word, excluding little words 
  def titleize(str)
    little_words = %w{a an and the or for of nor over in}
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

  
  
end

# book = Book.new("inferno")

# puts book.title