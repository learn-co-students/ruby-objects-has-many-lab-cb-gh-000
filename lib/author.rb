                      # Ruby: Has Many Objects #

class Author
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :name
  def initialize(name)
    self.name = name
    @posts = []
  end


  # Initializing the class variable '@@post_count' to keep track of the number
  # of 'Post' objects created that are associated with this particular 'Author' class.
  @@post_count = 0


  # Method returns the array of 'Post' objects within the '@posts' instance variable.
  def posts
    @posts
  end


  # Method takes in the argument 'post' and adds the 'Post' object to the
  # instance variable '@posts' array, and associates the song with the current
  # 'Author' class.
  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end


  # Method takes in the argument 'title', creates a new 'Post' object with it,
  # and associates the song with the current 'Author' class.
  def add_post_by_title(title)
    # Initializes a new 'Post' object with the 'title' argument.
    post = Post.new(title)
    # Pushes the new 'Post' object as an element into the instance variable
    # '@posts' array.
    @posts << post
    # Updates the class variable '@@post_count' to iterate by one, signifying
    # the new post being created and stored.
    @@post_count += 1
    # Assigns 'self', or the 'Author' class, as the 'author' attribute for the post.
    post.author = self
  end


  # Method returns the class variable '@@post_count', which holds the current
  # number of 'Post' objects that have been created.
  def self.post_count
    return @@post_count
  end
end
