require 'post'

class Author
  @@post_count = 0
  attr_accessor :name, :posts
  def initialize(name, posts = [])
    self.name = name
    self.posts = posts
  end
  def add_post(post)
    post.author = self
    @@post_count += 1
    self.posts << post
  end
  def add_post_by_title(post)
    post = Post.new(post)
    self.add_post(post)
  end
  def self.post_count
    @@post_count
  end
end
