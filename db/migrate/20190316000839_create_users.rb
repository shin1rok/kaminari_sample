class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender
      t.date :birthday
      t.integer :prefecture_id
      t.text :profile

      t.timestamps
    end
  end
end
