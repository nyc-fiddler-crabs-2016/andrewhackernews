class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
    t.references :post # null:false ?
    t.references :user, null:false

    t.timestamps null:false

    end
  end
end
