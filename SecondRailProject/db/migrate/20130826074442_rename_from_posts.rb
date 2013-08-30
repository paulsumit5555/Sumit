class RenameFromPosts < ActiveRecord::Migration
  def change
      change_table :posts do |t|  
        t.rename :demo, :demoAuthor
      end
    end
end
