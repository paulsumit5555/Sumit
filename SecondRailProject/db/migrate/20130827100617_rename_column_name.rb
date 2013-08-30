class RenameColumnName < ActiveRecord::Migration
  def change
      change_table :authors do |t|  
        t.rename :name, :author
      end
    end
end
