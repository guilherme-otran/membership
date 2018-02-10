class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.date :birthdate
      t.date :baptism_date
      t.string :address
      t.references :city, foreign_key: true
      t.string :number
      t.string :complement
      t.string :phone1
      t.string :phone2
      t.string :phone3

      t.timestamps
    end
  end
end
