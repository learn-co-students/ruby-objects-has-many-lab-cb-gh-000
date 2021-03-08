class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def all_songs
    all
  end

  def self.all
    @@all
  end

  def author_name
    @author == nil ? nil : @author.name
  end

end