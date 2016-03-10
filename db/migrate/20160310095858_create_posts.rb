class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title, null: false
      t.text :hyperlink, null:false
      t.references :user, null: false

      t.timestamps null: false
    end
  end
end
