class Post
	attr_accessor :title, :author
	def initialize(name)
		@title = name
	end

	def author_name
		if @author
			@author.name
		else
			nil
		end
	end
end
