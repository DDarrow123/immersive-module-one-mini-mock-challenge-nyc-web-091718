require 'pry'
require_relative './book'
require_relative './author'



a1 = Author.new("John Smith")
a2 = Author.new("Anna Wintour")
a3 = Author.new("Yoshi Yammamoto")
a4 = Author.new("Love Goodland")


b1 = Book.new(a1, "Love in the time of Cholera", 800)
b2 = Book.new(a2, "Where the Sun Sets", 2000)
b3 = Book.new(a3, "The Great Gatsby", 4000)
b4 = Book.new(a4, "The Airbender", 1500)
b5 = Book.new(a1, "If Jack is in Love", 2500)
b6 = Book.new(a3, "Follow your Heart", 2200)

a1.total_words
binding.pry
puts 'woohoo'
# b1.author
# Author.all
# Book.author
# Book.title

#a1.total_words
