class App
  def initialize
    @books = []
    @labels = []
  end

  def list_books
    puts "\n*********\nAll Books"
    puts '---------'
    puts "No Books to display." if @books.length.zero?
    @books.each do |book|
      puts "Id: #{book.__id__} "
      puts "Published by: #{book.publisher}"
      puts "Cover state: #{book.cover_state}\n"
    end
  end
  def list_labels
    puts "\n*********\nAll Labels"
    puts '---------'
    puts "No Labels to display." if @labels.length.zero?
    @labels.each do |label|
      puts "Id: #{label.__id__} "
      puts "Title: #{label.title}"
      puts "Color: #{label.color}\n"
    end
  end
end
