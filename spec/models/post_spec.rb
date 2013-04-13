require 'spec_helper'

	describe Post do
	  it "is invalid when a parameter is missing" do
	  	post = Post.new
	  	post.content = "something"
	  	post.author = "me"
	  	post.should_not be_valid
		end

		it "is valid with title, author, content" do
			post = Post.new
			post.title = "this is something"
			post.author = "me"
			post.content = "something"
			post.should be_valid
		end
end