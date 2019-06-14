class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
     @title = title
     @@all << self
  end

  def author_all_posts
    self.author.author_posts
  end

  def author_name
     self.author ? self.author.name : nil
  end
end
