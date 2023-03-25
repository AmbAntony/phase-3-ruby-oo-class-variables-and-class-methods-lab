require 'pry'
class Song
       @@count = 0
       @@genres = []
       @@artists = []
       
       attr_accessor :name, :genre, :artist

    def initialize(name,artist,genre)
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
        @@genres<<genre
        @@artists<<artist
       
    end

    def self.count
        @@count
    end
    # The uniq method returns a new array with only the unique elements of @@genres. This ensures there are no duplicates in the resulting array.
    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    # this method iterates through the @@genres array and counts the number of occurence of each genre and returns a hash
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else 
                genre_count[genre] = 1 
            end
              puts genre_count
        end
    end


    # this method iterates through the @@artists array and counts the number of occurence of each artist and returns a hash

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
             puts artist_count 
        end
    end
end





ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
shots = Song.new("shots to the head", "Cedo", "afro-pop")
lala = Song.new("lala amka", "Cedo", "afro-pop")
compton = Song.new("New York", "Alicia Keys", "rap")


# binding.pry

