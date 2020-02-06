class Author

  attr_accessor :name
  def initialize(name)
    self.name = name
    @posts = []
  end

  @@post_count = 0

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)

    post = Post.new(title)

    @posts << post

    @@post_count += 1

    post.author = self
  end


  def self.post_count
    return @@post_count
  end
end
