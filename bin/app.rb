class App
  def initialize
    @books = []
    @labels = []
    @musics = []
    @genres = []
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

  def add_book(book)
    @books << book
  end

  def add_music(music)
    @musics << music
  end
end
