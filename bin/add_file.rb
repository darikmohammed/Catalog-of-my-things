module AddFile
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
    book = Book.new(publish_date, publisher, cover_state)
    @app.add_book(book)
    puts "\n\nNew book Added\n"
  end

  def add_music
    puts "\n*********\nAdding a Music Album"
    puts 'Please enter the following datas'
    puts '---------'
    puts 'On_spotify true or false:'
    on_spotify = gets.chomp
    puts "Publish Date 'dd/mm/yyyy':"
    publish_date = gets.chomp.to_s
    music = MusicAlbum.new(publish_date, on_spotify: on_spotify)
    @app.add_music(music)
    puts "\n\nNew MusicAlbum Added\n"
  end

end
