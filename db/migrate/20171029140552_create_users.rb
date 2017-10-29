class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      # t.string :username, null: false
			# t.string :email, null: false
			# t.string :password_hash, null: false
      # t.string :pw_hash, null: false
      # t.string :password_salt
      # t.index :email, unique: true

      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
