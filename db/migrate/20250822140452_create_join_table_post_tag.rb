class CreateJoinTablePostTag < ActiveRecord::Migration[7.1]
  def change
    create_join_table :posts, :tags do |t|
      t.index %i[post_id tag_id]
      t.index %i[tag_id post_id]
    end

    add_foreign_key :posts_tags, :posts
    add_foreign_key :posts_tags, :tags
  end
end
