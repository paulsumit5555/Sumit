class CreatePostAuthors < ActiveRecord::Migration
  def change
    create_table :post_authors do |t|
      t.string :name
      t.references :post

      t.timestamps
    end
    add_index :post_authors, :post_id
  end
end
