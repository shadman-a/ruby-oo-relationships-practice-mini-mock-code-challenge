class Author
    attr_reader :name

    @@all = []

    def initialize (hash)
        @name = hash[:name]
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select do |name|
            name.author == @name
        end
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def total_words
        books.sum do |book|
            book.word_count
        end
    end

    def self.most_words
        tot = @@all.map do |author|
            author.total_words
        end
        count = tot.max 
        @@all.find do|author|
            count == author.total_words
        end
    end

end
