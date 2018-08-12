class Author 
  attr_accessor :name
  attr_accessor :posts
  @@posts_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@posts_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@posts_count += 1
  end
  
  def self.post_count
    return @@posts_count
  end
end