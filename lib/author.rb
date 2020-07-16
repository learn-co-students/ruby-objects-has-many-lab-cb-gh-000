class Author

  def initialize(name)
    @name=name
  end

  attr_accessor :name

  def posts
    arr=Post.all
    arr.collect do |s|
      if s.author==self
        s
      end
    end
  end

  def add_post(post)
    post.author=self
  end

  def add_post_by_title(title)
    p=Post.new(title)
    p.author=self
  end

  def self.post_count
    return Post.all.size
  end

end
