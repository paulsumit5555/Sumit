class CreateOwnerAuthors < ActiveRecord::Migration
  def change
    create_table :owner_authors do |t|
      t.string :name

      t.timestamps
    end
  end
end
