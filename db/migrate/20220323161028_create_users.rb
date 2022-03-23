class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_
      t.string :name
      t.string :last_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
