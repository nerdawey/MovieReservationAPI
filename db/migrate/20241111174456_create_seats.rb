class CreateSeats < ActiveRecord::Migration[8.0]
  def change
    create_table :seats do |t|
      t.string :seat_number
      t.string :row_number
      t.references :showtime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
