class RenamePostToText < ActiveRecord::Migration
  def up
    rename_column :posts, :post, :text
  end
end
