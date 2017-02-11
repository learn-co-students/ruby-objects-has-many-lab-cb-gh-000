class Post

  attr_accessor :author

  attr_reader :title

  def initialize(title)
    @title = title
    @author = nil
  end

  def author_name
    @author == nil ? nil : @author.name
  end

end
