class AddCategoryToPosts < ActiveRecord::Migration[6.0]
  def change
    execute <<-SQL
      CREATE TYPE post_category AS ENUM ('news', 'review', 'other');
    SQL
    add_column :posts, :category, :post_category
  end
end
