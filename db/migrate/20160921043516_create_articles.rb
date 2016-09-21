class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :user_name

      t.timestamps null: false
    end
  end
end
