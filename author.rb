require 'pry'

class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#select all books I have written
  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

#total words AUTHOR HAS WRITTEN for all books
  def total_words
    sum_words = books.inject(0) do |sum, book|
      sum + book.word_count
    end
    sum_words
  end

#the author instance who has written the most words
  def self.most_words
    self.all.max_by do |author|
      author.total_words
    end
  end

end
