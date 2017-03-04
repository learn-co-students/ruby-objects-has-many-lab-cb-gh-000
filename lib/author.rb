class Author

  @@post_count = 0

  attr_reader :name, :posts

  def self.post_count
    @@post_count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
  end

end