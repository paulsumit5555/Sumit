class RenamePostAuthor < ActiveRecord::Migration
  def change
          change_table :posts do |t|  
            t.rename :city_id, :city_name
          end
  end
end
