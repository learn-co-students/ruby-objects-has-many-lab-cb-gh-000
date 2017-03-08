class Post
  attr_accessor :author, :title
  attr_reader :name

  def initialize(title)
    @title = title
  end

  def author_name
    if defined?(self.author.name)
      self.author.name
    else
      nil
    end
  end
end
