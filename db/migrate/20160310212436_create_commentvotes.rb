class CreateCommentvotes < ActiveRecord::Migration
  def change
  create_table :commentvotes do |t|
    t.references :comment #null:false
    t.references :user, null:false

    t.timestamps null:false

    end
  end
end
