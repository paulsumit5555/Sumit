class AddAuthorToPosts < ActiveRecord::Migration
  def change
     #add_column :posts, :author, :string
    add_column :posts, :demoauthor, :string
  end
end
