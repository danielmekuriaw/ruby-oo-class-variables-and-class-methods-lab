class Song

    attr_reader :name, :artist, :genre

    @@count = 0

    @@artists = []

    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@artists << artist

        @@genres << genre

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.uniq.each{ |a_genre|
            temp_count = 0
            @@genres.each{ |genre2|
                if genre2 == a_genre
                    temp_count += 1
                end
            }
            hash[a_genre] = temp_count
        }

        hash
    end

    def self.artist_count
        hash = {}
        @@artists.uniq.each{ |an_artist|
            temp_count = 0
            @@artists.each{ |artist2|
                if artist2 == an_artist
                    temp_count += 1
                end
            }
            hash[an_artist] = temp_count
        }
        hash
    end

end