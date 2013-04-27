class Admin::PostsController < AdminController

	def index
		@posts = Post.order('created_at DESC')
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
      	expire_fragment("latest")
        expire_fragment("posts")
        format.html { redirect_to admin_posts_path }
      else
        format.html { render :action => "new" }
      end
    end

	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		respond_to do |format|
      if @post.update_attributes(params[:post])
        expire_fragment("latest")
        expire_fragment("posts")
        format.html { redirect_to admin_posts_path }
      else
        format.html { render :action => "edit" }
      end
    end
	end

	def destroy
		@post = Post.find(params[:id])

		respond_to do |format|
      if @post.destroy
      	expire_fragment("latest")
        expire_fragment("posts")
        format.html { redirect_to admin_posts_path }
      end
    end
	end

end
