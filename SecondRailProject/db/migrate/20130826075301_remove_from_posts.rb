class RemoveFromPosts < ActiveRecord::Migration
  def change
      change_table :posts do |t|  
        t.remove :demoauthor
      end
    end
end
