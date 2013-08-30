class PostsAuthorController < ApplicationController
  def new
    @post = Post.new
    @postauthor = @post.post_authors.build
  end
    
  def create      
        @post = Post.new(params[:post])
        @post.post_authors.build(:name => params[:postauthor][:name])        
        #@post_author = @post.post_authors.new(:name => params[:postauthor][:name])
        if @post.save #&& @post_author.save
          @city = City.find(@post['city_id'])
          render 'show'
        else
            flash.now[:error] = "Record could not be saved because" , @post.errors.full_messages
              render 'new'
        end
      
     # @post = Post.find(params[:post_id])
        
=begin
      @post_author = @post.post_authors.new(:name => params[:postauthor][:name])
      
          if @post_author.save
            #redirect_to @post_author
            render 'show'
          else   
            render 'new'
          end
=end
    end
end
