class Item
  attr_accessor :publish_date, :author

  def initialize(publish_date, archived: false)
    @publish_date = publish_date
    @archived = archived
    @author = nil
  end

  def move_to_archive()
    @archived = true if can_be_archieved?
  end

  def add_author(author)
    @author = author
    author.add_item(self)
  end

  private

  def can_be_archieved?
    return true if publish_date > 10

    false
  end
end
