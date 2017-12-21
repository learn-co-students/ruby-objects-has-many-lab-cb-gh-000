class Author
  attr_accessor :name, :posts

  @@post_count = 0
  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end

end
