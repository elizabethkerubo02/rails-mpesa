class CreateMPesas < ActiveRecord::Migration[7.0]
  def change
    create_table :m_pesas do |t|
      t.string :checkoutRequestID
      t.string :merchantRequestID
      t.string :amount
      t.string :mpesaReceiptNumber
      t.string :phoneNumber
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
