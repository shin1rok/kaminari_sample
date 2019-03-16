class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :gender, null: false
      t.date :birthday, null: false
      t.integer :prefecture_id
      t.text :profile

      t.timestamps
    end
  end
end
