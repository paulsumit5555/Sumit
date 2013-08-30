require 'ruby-debug'
class OwnerAuthorsController < ApplicationController
  def new
=begin
    post = Post.find(params[:post_id])
      debugger
       #2nd you build a new one
       @author = post.author.build
=end
   # @post = Post.find(params[:post_id])
  end
  
  def create
  
    @post = Post.find(params[:post_id])
    debugger
    @author = @post.owner_authors.create(params[:post][:name])
       
        if @author.save
          redirect_to @author
        else   
          render 'new'
        end
    
  end
end
