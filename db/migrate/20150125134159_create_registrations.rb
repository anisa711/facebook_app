class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :password
      t.string :gender

      t.timestamps
    end
  end
end
