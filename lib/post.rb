class Post
  attr_reader :title
  attr_accessor :author

  def initialize(title)
    @title = title
  end

  def author_name
    @author ? @author.name : nil
  end
end