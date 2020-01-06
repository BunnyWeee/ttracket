class CreateRackets < ActiveRecord::Migration[6.0]
  def change
    create_table :rackets do |t|
      t.string :brand
      t.string :product
      t.integer :code, default:0
      t.integer :type, default:0
      t.integer :material, default:0
      t.integer :weight
      t.integer :size, default:0
      t.integer :thickness, default:0
      t.string :forehand
      t.string :backhand
      t.integer :total_weight
      t.text :note

      t.timestamps
    end
  end
end
