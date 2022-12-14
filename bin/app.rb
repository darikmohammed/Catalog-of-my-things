require_relative '../bin/file_update'
class App
  include FileUpdate
  attr_reader :books, :labels, :games, :authors, :musics, :genres

  def initialize
    @books = reader_books
    @labels = reader_labels
    @games = reader_games
    @authors = reader_authors
    @musics = reader_musics
    @genres = reader_genres
  end

  def list_books
    puts "\n*********\nAll Books"
    puts '---------'
    puts 'No Books to display.' if @books.length.zero?
    @books.each do |book|
      puts "Id: #{book.__id__} "
      puts "Published by: #{book.publisher}"
      puts "Cover state: #{book.cover_state}\n"
    end
  end

  def list_labels
    puts "\n*********\nAll Labels"
    puts '---------'
    puts 'No Labels to display.' if @labels.length.zero?
    @labels.each do |label|
      puts "Id: #{label.__id__} "
      puts "Title: #{label.title}"
      puts "Color: #{label.color}\n"
    end
  end

  def list_music
    puts "\n*********\nAll Musics Albums"
    puts '---------'
    puts 'No Musics-Albums to display.' if @musics.length.zero?
    @musics.each do |music|
      puts "Id: #{music.__id__} "
      puts "Publish Date: #{music.publish_date}"
      puts "On_spotify: #{music.on_spotify}\n"
    end
  end

  def list_genres
    puts "\n*********\nAll Genres"
    puts '---------'
    puts 'No Genres to display.' if @genres.length.zero?
    @genres.each do |genre|
      puts "Id: #{genre.__id__} "
      puts "Name: #{genre.name}"
    end
  end

  def list_authors
    puts "\n*********\nAll Authors"
    puts '---------'
    puts 'No Author to display.' if @authors.length.zero?
    @authors.each do |author|
      puts "Id: #{author.__id__} "
      puts "Author: #{author.first_name} #{author.last_name}\n"
    end
  end

  def list_games
    puts "\n*********\nAll Games"
    puts '---------'
    puts 'No Game to display.' if @games.length.zero?
    @games.each do |game|
      puts "Id: #{game.__id__} "
      puts "Game was published on: #{game.publish_date}"
      puts "Game was last played on: #{game.last_played_at}"
      puts "Multiplayer: #{game.multiplayer}\n"
    end
  end

  def add_book(book)
    @books << book
  end

  def add_label(label)
    @labels << label
  end

  def add_music(music)
    @musics << music
  end

  def add_genre(genre)
    @genres << genre
  end

  def add_game(game)
    @games << game
  end

  def add_author(author)
    @authors << author
  end
end
