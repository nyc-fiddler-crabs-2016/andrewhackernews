class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
    t.references :post
    t.references :comment
    t.references :user, null:false

    t.timestamps null:false

    end
  end
end
