class Author
  @@number=0
  attr_accessor :name,:posts
  def initialize(name)
    @name=name
    @posts=[]
  end
  def add_post(post)
    self.posts<<post
    post.author=self
    @@number+=1
  end
  def add_post_by_title(post_title)
    post=Post.new(post_title)
    self.posts<<post
    post.author=self
    @@number+=1
  end
  def self.post_count
    @@number
  end
end
