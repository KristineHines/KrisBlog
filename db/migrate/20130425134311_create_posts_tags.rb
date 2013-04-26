class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags, :id => false do |t|
      t.references :post
      t.references :tag
    end
  end
end

# post.id = PostTag.where(post_id: post.id)
