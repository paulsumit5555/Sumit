require 'ruby-debug'
class Show::ShowAllController < ApplicationController
  
  
  
  
  def test
    
  end
  
  def index
    
    @posts = Post.all  
   
    #@city = City.find(@posts['city_id'])
=begin
    @array = Array[500]
    (0..4).each do |i|
      @array[i] = i
=end
    
    session[:current_user_id] = "111"
    flash[:alert] = "User just visited the show all page"
        
  end
end
