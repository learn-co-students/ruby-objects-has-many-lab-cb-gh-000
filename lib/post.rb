class Post
  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = Author.new
    @@all << self
  end

  def author_name
    if @author.name == ""
      return nil
    else
      return @author.name
    end
  end
end
