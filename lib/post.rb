class Post
  
  attr_accessor :title, :author
  def initialize(title)
    self.title = title
    self.author = ()
  end


  def author_name
    if @author != nil
      return @author.name
    else
      return nil
    end
  end
end
