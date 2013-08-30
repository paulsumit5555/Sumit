require 'ruby-debug'

class PostsController < ApplicationController
 
  def deleteCity     
    @city = City.find(params['id'])
    @city.destroy
      redirect_to showAll_index_path
  end
  
  def newCity
  end
  
  def addCity   
       
      @save = true
      @cities = params[:city][:city]
      @cities = @cities.delete_if{|x| x.empty? }
   
      @cities.each do |city|
               
        if !City.new(:name => city).save
          @save = false               
          break
        end   
      end
    if @save
        redirect_to new_post_path      
     else
        render 'newCity'
     end  
      
  end
  
  
  def new  
    
  end 
  
  def index

    
    
  end
   
 
  def create
    
    #redirect_to params[:post].merge!(:action=>"show")
    # for check git commit
    #+++++++++++++++++++++++++++++++++
    #debugger
    #@title = params["post"]["title"]
    #@text = params["post"]["text"]
    #redirect_to post_path(@title,:text=>@text)
  
    #setting the cookies 
    cookies[:authName] = params[:post]["author"]
    
    @post = Post.new(params[:post])
   
    if @post.save
     
      #redirect_to post_authors_path(@post)
     
      @city = City.find(@post['city_id'])
      #redirect_to @post
        render 'show'
    else
      flash.now[:error] = "Record could not be saved because" , @post.errors.full_messages
      #@error = @post.errors.full_messages     
      render 'new'
      #  redirect_to new_post_path
    end
  end
  
  
  def show    
  
    @post = Post.find(params[:id])
    @city = City.find(@post['city_id'])
    #@title = params["id"]
    #@text = params["text"]
  end
  
  def edit
   #getting the cookies
    @author = cookies[:authName]
    
    @post = Post.find(params[:id])
    
      
      
=begin
    @user_id = session[:current_user_id]
    if(@user_id == "111")
      @post = Post.find(params[:id])
    else
      redirect_to posts_path
    end
=end      
  end
  
  def update 
    
    @post = Post.find(params[:id]) 
         
    if @post.update_attributes(params[:post])
      @city = City.find(@post['city_id'])
      render 'show' 
    else
      render 'edit'
    end
  end  
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to showAll_index_path
  end
  
  end

  