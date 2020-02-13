

class Post
  attr_accessor :author , :title
  @@all = []
  def initialize (title )
    self.title = title
    @@all << self
  end
  def author_name
    self.author.name if author
  end

  def self.all
    @@all
  end
  def self.all
    @@all
  end
end
