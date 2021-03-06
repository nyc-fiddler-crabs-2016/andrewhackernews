class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique:true
      t.text :password_digest, null: false
      # Is the null false an issue with Bcrypt?
      t.text :about_me
      t.text :email

      t.timestamps null: false
    end
  end
end
