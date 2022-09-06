class Item
  attr_accessor :publish_date, :label

  def initialize(publish_date, archived: false)
    @publish_date = publish_date
    @archived = archived
    @label = nil
  end

  def move_to_archive()
    @archived = true if can_be_archieved?
  end

  def add_label(label)
    @label = label
    label.add_item(self)
  end

  private

  def can_be_archieved?
    return true if publish_date > 10

    false
  end
end
