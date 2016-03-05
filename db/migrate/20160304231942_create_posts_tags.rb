class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags, id: false do |t|
      t.references :post
      t.references :tag
    end

    add_index :posts_tags, %i(post_id tag_id), unique: true

  end
end
