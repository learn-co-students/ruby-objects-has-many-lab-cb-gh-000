class Author

  @@post_count = 0

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end


  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    self.add_post(post_title)
  end
  def self.post_count
    @@post_count
    end

  end
