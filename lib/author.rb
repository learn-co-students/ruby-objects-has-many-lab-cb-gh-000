class Author
  attr_accessor :name
  @@pcount = 0
  def initialize(name)
    @name = name
    @post = []
  end

  def posts
    @post
  end

  def add_post(post)
    @@pcount+=1
    @post << post
    post.author = self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @@pcount+=1
    @post << post
    post.author = self
  end

def self.post_count
    @@pcount
  end

end
