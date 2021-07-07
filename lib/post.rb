

class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def has_author?
    !!self.author
  end

  def author_name
    if has_author?
      self.author.name
    else
      nil
    end
  end
end
