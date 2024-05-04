class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, null: false, foreign_key: true
      t.references :start_island, null: false, foreign_key: { to_table: :islands }
      t.references :end_island, null: false, foreign_key: { to_table: :islands }

      t.timestamps
    end
  end
end
