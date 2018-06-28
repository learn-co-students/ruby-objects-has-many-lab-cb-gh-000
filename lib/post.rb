class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
    @author = nil
  end

  def self.all
    return @@all
  end

  def author_name
    begin
      return self.author.name
    rescue
      nil
    end
  end

end
