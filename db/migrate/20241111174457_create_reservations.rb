class CreateReservations < ActiveRecord::Migration[8.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :showtime, null: false, foreign_key: true
      t.references :seat, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
