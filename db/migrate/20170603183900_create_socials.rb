class CreateSocials < ActiveRecord::Migration[5.1]
  def change
    create_table :socials do |t|
      t.string :socialID
      t.string :userName
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
