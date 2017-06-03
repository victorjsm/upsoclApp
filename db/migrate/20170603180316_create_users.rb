class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :rut
      t.string :name
      t.string :lastName
      t.string :email
      t.date :birthDate
      t.string :password

      t.timestamps
    end
  end
end
