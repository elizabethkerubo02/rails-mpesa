class CreateCallbackUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :callback_urls do |t|
      t.string :transaction_type
      t.date :trans_time
      t.integer :trans_amount
      t.integer :bill_ref_number
      t.integer :msisdn
      t.integer :business_shortcode
      t.integer :trans_id
      t.string :resultcode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
