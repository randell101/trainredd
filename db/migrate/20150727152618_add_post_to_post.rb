class AddPostToPost < ActiveRecord::Migration
  def change
    add_column :posts, :post, :string
  end
end
