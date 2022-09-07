class App
  def initialize
    @books = []
  end

  def list_books
    puts "\n*********\nAll Books"
    puts '---------'
    puts "No Books to display." if @books.length.zero?
    @books.each do |book|
      puts "Id: #{book.id} "
      puts "Published by: #{book.publisher}"
      puts "Cover state: #{book.cover_state}\n"
    end
  end
end
