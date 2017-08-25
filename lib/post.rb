class Post
  attr_accessor :name, :title, :author

  def initialize(a_title)
    @title = a_title
  end

  def author
    @author
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end
