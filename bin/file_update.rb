require 'json'

module FileUpdate
  def write_json
    File.write('data/book.json', '', mode: 'w')
    File.write('data/label.json', '', mode: 'w')
    File.write('data/author.json', '', mode: 'w')
    File.write('data/game.json', '', mode: 'w')
    File.write('data/music.json', '', mode: 'w')
    File.write('data/genre.json', '', mode: 'w')

    @app.books.each do |book|
      json_book = JSON.generate(book)
      File.write('data/book.json', "#{json_book}\n", mode: 'a')
    end
    @app.labels.each do |label|
      json_label = JSON.generate(label)
      File.write('data/label.json', "#{json_label}\n", mode: 'a')
    end

    @app.games.each do |game|
      json_game = JSON.generate(game)
      File.write('data/game.json', "#{json_game}\n", mode: 'a')
    end

    @app.authors.each do |author|
      json_author = JSON.generate(author)
      File.write('data/author.json', "#{json_author}\n", mode: 'a')
    end

    @app.musics.each do |music|
      json_music = JSON.generate(music)
      File.write('data/music.json', "#{json_music}\n", mode: 'a')
    end

    @app.genres.each do |genre|
      json_genre = JSON.generate(genre)
      File.write('data/genre.json', "#{json_genre}\n", mode: 'a')
    end
  end

  def reader_books
    unless File.exist?('data/book.json')
      File.open('data/books.json', 'w')
      return []
    end
    books = []
    File.foreach('data/book.json') do |line|
      books << JSON.parse(line, create_additions: true)
    end
    books
  end

  def reader_labels
    unless File.exist?('data/label.json')
      File.open('data/label.json', 'w')
      return []
    end
    labels = []
    File.foreach('data/label.json') do |line|
      labels << JSON.parse(line, create_additions: true)
    end
    labels
  end

  def reader_authors
    unless File.exist?('data/author.json')
      File.open('data/author.json', 'w')
      return []
    end
    authors = []
    File.foreach('data/author.json') do |line|
      authors << JSON.parse(line, create_additions: true)
    end
    authors
  end

  def reader_games
    unless File.exist?('data/game.json')
      File.open('data/game.json', 'w')
      return []
    end
    games = []
    File.foreach('data/game.json') do |line|
      games << JSON.parse(line, create_additions: true)
    end
    games
  end

  def reader_musics
    unless File.exist?('data/music.json')
      File.open('data/music.json', 'w')
      return []
    end
    musics = []
    File.foreach('data/music.json') do |line|
      musics << JSON.parse(line, create_additions: true)
    end
    musics
  end

  def reader_genres
    unless File.exist?('data/genre.json')
      File.open('data/genre.json', 'w')
      return []
    end
    genres = []
    File.foreach('data/genre.json') do |line|
      genres << JSON.parse(line, create_additions: true)
    end
    genres
  end
end
