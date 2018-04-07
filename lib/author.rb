class Author
  @@post_count = 0
  def self.post_count
    @@post_count
  end
  def self.post_count=(number)
    @@post_count = number
  end
  
  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    self.name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    self.class.post_count += 1
  end

  def add_post_by_title(post_title)
    self.add_post(Post.new(post_title))
  end
end