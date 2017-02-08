class Author

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  attr_accessor :name, :posts

  def initialize(name)
    self.name = name
    self.posts = []
  end

  def add_post(post)
    post.author = self
    self.posts << post
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

end
