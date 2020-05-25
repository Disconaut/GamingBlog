class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.json :image
      t.index :title, unique: true

      t.timestamps
    end
  end
end
