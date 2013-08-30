class Post < ActiveRecord::Base
  attr_accessible :text, :title, :city_id, :owner_authors
  has_many :post_authors, :dependent => :destroy
  
  belongs_to :city
  
  @includeList = "Title1, Title2, Title3"
  
  validates :title, :presence => true, :length => { :maximum => 6, :message => ":maximum length is 6" },
  :inclusion => { :in => @includeList, :message => " %{value} should match the include list #{@includeList} " } 
  
end
