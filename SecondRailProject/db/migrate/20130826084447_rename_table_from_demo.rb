class RenameTableFromDemo < ActiveRecord::Migration
  rename_table :demo_models, :test_models
end
