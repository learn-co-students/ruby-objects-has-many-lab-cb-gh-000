class Author  
  
  attr_accessor :name, :posts 
  
  @@count = 0 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(obj)
    obj.author = self 
    self.posts << obj 
    @@count += 1 
  end 
  
  def add_post_by_title(name)
    new = Post.new(name)
    new.author = self 
    self.posts << new 
    @@count += 1 
  end 
  
  def self.post_count 
    @@count 
  end 
  
end 


