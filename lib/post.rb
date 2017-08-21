                      # Ruby: Has Many Objects #

class Post
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :title, :author
  def initialize(title)
    self.title = title
    self.author = ()
  end


  # Method returns the 'name' attribute of the 'Author' class that the
  # particular 'Post' object is associated with. Returns nil if there is no
  # 'Author' class that is associated.
  def author_name
    if @author != nil
      return @author.name
    else
      return nil
    end
  end
end
