require 'pry'
require_relative './book'
require_relative './author'

class Book
    attr_accessor :author, :title, :word_count

    @@all = []
    
    def initialize (hash)
        @author = hash[:author]
        @title = hash[:title]
        @word_count = hash[:word_count]
        @@all << self
    end

    def self.all
        @@all
    end 


end

book1 = Book.new({author:"JK", title:"Moon", word_count:350000})
book2 = Book.new({author:"RL", title:"Boy", word_count:200})
book3 = Book.new({author:"JK", title:"Bay", word_count:350000})

author1 = Author.new({name:"JK"})
author2 = Author.new({name:"RL"})

binding.pry


