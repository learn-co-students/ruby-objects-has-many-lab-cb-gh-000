class Author
  attr_accessor :name
  @@total = 0

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def posts
    return @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
  end

  def self.post_count
    return Post.all.size
  end

end
