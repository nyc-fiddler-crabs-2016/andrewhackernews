class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, null: false
      t.references :post, null: false


      t.timestamps null: false
    end
  end
end
