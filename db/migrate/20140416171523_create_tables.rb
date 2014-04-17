class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
    end
    create_table :accomodations do |t|
      t.string :location
      t.text :description
      t.decimal :price
      t.integer :rooms
      t.decimal :cancellation_fee
      t.integer :user_id
    end
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :accomodation_id
      t.date :check_in
      t.date :check_out
    end
  end
end
