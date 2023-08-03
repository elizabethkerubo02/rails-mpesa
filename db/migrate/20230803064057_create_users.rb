class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :pnumber
      t.integer :balance
      t.string :password

      t.timestamps
    end
  end
end
