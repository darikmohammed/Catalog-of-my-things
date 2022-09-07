require_relative '../bin/app'
require_relative '../lib/book'
class Main
  def prompt
    print '
Please choose an option by entering a number:
    1 - List all books
    2 - List all music albums
    3 - List all movies
    4 - List of games
    5 - List all genres
    6 - List all labels
    7 - List all authors
    8 - List all sources
    9 - Add a book
    10- Add a music album
    11- Add a movie
    12- Add a game
    13- Exit
    '
  end

  def main
    exit = 0
    @app = App.new
    puts 'Welcome to Catalog of my strings'

    while exit.zero?
      prompt
      option = gets.chomp.to_i
      exit = 1 if option == 13
      select_option(option)
    end
  end

  def select_option(option)
    if option.positive? && option < 9
      list_selection(option)
    else
      add_selection(option)
    end
  end

  def list_selection(option)
    case option
    when 1 then @app.list_books
    # when 2 then @app.list_music
    # when 3 then @app.list_movies
    # when 4 then @app.list_games
    # when 5 then @app.list_genres
    when 6 then @app.list_labels
      # when 7 then @app.list_authors
      # when 8 then @app.list_sources
    end
  end

  def add_selection(option)
    case option
    when 9 then add_book
    # when 10 then add_music
    # when 11 then add_movie
    # when 12 then add_game
    when 13 then puts 'Thank you for using our app'
    else
      puts 'Please choose the correct option.'
    end
  end

  def add_book
    puts "\n*********\nAdding Book"
    puts 'Please enter the following datas'
    puts '---------'
    puts 'Publisher:'
    publisher = gets.chomp.to_s
    puts 'Cover State:'
    cover_state = gets.chomp.to_s
    puts "Publish Date 'dd/mm/yyyy':"
    publish_date = gets.chomp.to_s
    puts "Archived 'true/false':"
    archived = gets.chomp
    book = Book.new(publish_date, publisher, cover_state, archived: archived)
    @app.add_book(book)
    puts "\n\nNew book Added\n"
  end
end

name = Main.new
name.main
