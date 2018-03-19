class Author
	attr_accessor :name, :posts
	@@post_count = 0
	def initialize(name)
		@name = name
		@posts = []
		@@post_count
	end

	def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
    post
  end

	def add_post_by_title(title)
		@@post_count += 1
		post = Post.new(title)
		@posts << post
		post.author = self
 		post
	end

	def self.post_count
		@@post_count
	end

end
