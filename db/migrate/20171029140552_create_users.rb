class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email, null: false
      t.string :password_digest, null: false
      # t.index :email, unique: true

      t.timestamps null: false
    end
  end
end
