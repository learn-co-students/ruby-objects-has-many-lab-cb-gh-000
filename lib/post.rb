class Post

  def initialize(title)
    @title=title
    @@all<<self
  end

  @@all=Array.new

  def self.all
    @@all
  end

  attr_accessor :title, :author

  def author_name

    if author!=nil
      author.name
    else
      nil
    end

  end

end
