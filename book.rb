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
