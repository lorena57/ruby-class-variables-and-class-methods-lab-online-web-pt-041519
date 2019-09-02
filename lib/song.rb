require 'pry'
class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name= name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        what = @@genres.each_with_object(Hash.new(0)) do |genre, ct|
            ct[genre] +=1
        end       
        what
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        wow = @@artists.each_with_object(Hash.new(0)) do |e, total|
            total[e] +=1
        end
        wow
    end

end