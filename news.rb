class News
  def initialize(id, item)
    @id = id
    @item = item
  end

  def id
    @id
  end

  def title
    @item.title
  end

  def description
    @item.description
  end

  def publication_date
    @item.pubDate
  end

  def link
    @item.link
  end

  def to_s
    "#{id} - #{publication_date} - #{title}"
  end

  def print
    puts title
    puts publication_date
    puts description
    puts link
  end
end
