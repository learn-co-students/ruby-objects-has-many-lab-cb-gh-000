class Post
  attr_accessor :author
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def author_name
    self.author != nil ? self.author.name : nil
  end

end
