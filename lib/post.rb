class Post

  attr_accessor :author
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def author_name
    begin
      self.author.name
    rescue NoMethodError
      nil
    end
  end
end
