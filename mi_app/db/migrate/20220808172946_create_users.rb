class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :last_name
      t.string :adress
      t.string :about_me
      t.integer :phone

      t.timestamps
    end
  end
end
