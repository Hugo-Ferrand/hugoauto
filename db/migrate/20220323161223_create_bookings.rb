class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :comment
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
