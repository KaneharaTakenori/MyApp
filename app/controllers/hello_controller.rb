class HelloController < ApplicationController
    require 'rspotify'
    RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
    def index

      album_ids = [
        "2ANVost0y2y52ema1E9xAZ", # Coldplay - Parachutes
        "2UJcKiJxNryhL050F5Z1Fk", # Taylor Swift - Folklore
        "0ETFjACtuP2ADo6LFhL6HN", # BTS - BE
        "4xwx0x7k6c5VuThz5qVqmV", # The Weeknd - After Hours
        "5Dgqy4bBg09Rdw7CQM545s", # Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?
        "75ol9OP8bJaRqzGimpFHDm", # Drake - Scorpion
        "2cUpAOlQjV5uSjkWj5bEQY", # Dua Lipa - Future Nostalgia
        "0NouBnbXRJKFWzm9LwCW0K", # Bruno Mars - 24K Magic
        "29f2cOueckYE8Nc1pkJjrU", # Justin Bieber - Purpose
        "6YUCc2RiXcEKS9ibuZxjt0", # Post Malone - Hollywood's Bleeding
        "5EyIDBAqhnlkAHqvPRwdbX", # Harry Styles - Fine Line
        "6QaVfG1pHYl1z15ZxkvVDW", # Shawn Mendes - Shawn Mendes
        "6FCzvataOZh68j8OKzOt9a", # Doja Cat - Hot Pink
        "1BZoqf8Zje5nGdwZhOjAtD", # Olivia Rodrigo - SOUR
        "3UsWuvyuXkospeI9nLdVem", # Kanye West - Donda
        "3UsWuvyuXkospeI9nLdVem", # Imagine Dragons - Evolve
        "3UsWuvyuXkospeI9nLdVem", # Maroon 5 - Jordi
        "3UsWuvyuXkospeI9nLdVem", # Rihanna - Anti
        "3UsWuvyuXkospeI9nLdVem", # Ed Sheeran - Divide
        "3UsWuvyuXkospeI9nLdVem"  # Ariana Grande - Dangerous Woman
      ]
      @albums = RSpotify::Album.find(album_ids)

    end
    
    def link
    end
end