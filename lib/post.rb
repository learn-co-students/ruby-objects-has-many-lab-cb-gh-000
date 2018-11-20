class Post

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  attr_accessor :title, :author

  def self.all
    @@all
  end

  def author_name
    unless @author == nil
      @author.name
    end
  end
end
