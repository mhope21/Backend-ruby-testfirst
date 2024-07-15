class Book
# write your code here
  attr_accessor :title

  def initialize(title = nil)
   self.title = title unless title.nil?
  end
  def title=(name)
    @title = titleize(name)
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

# book = Book.new
# book.book_name("inferno")
# puts book.title