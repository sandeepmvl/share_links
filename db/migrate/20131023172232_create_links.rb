class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :tags
      t.string :category
      t.string :language
      t.string :country
      t.integer :user_id

      t.timestamps
    end
    add_index :links, :user_id
  end
end
