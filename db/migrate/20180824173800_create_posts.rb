class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :author, foreign_key: { to_table: :users }
      t.datetime :published_at
    end
  end
end
