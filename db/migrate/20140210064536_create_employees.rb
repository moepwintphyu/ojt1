class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :userid
      t.string :username
      t.string :email
      t.binary :password
      t.binary :confirmpassword
      t.integer :age
      t.date :birthday
      t.string :NRCNo
      t.string :Gender
      t.string :specialize
      t.integer :phno
      t.string :address
      t.integer :travelfee
      t.integer :entryyear
      t.date :entrydate

      t.timestamps
    end
  end
end
