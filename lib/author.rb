class Author

  @@all_posts_count = 0

  def initialize(_name)
    @name = _name
    @posts = []
  end

  attr_accessor :name, :posts

  def add_post(post)
    @posts << post
    post.author = self
    @@all_posts_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@all_posts_count
  end

end # Author class
