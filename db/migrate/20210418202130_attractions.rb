class Attractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :tickets
      t.integer :nausea_rating
      t.integer :happiness_rating
      t.integer :min_height
      t.timestamps null: false
    end
    create_table :users do |t|
      t.string :name
      t.integer :nausea, default: 0
      t.integer :happiness, default: 0
      t.integer :tickets, default: 0
      t.integer :height, default: 0
      t.boolean :admin, default: false
      t.timestamps null: false
    end
    create_table :rides do |t|
      t.integer :user_id
      t.integer :attraction_id
      t.timestamps null: false
    end
  end
end
