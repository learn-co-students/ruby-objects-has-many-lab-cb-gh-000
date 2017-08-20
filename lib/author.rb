class Author
  @@post_count = 0
  attr_reader :name, :posts

  def initialize(name)
    @name = name
    @posts = Array.new
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
