class AddDefaultToRackets < ActiveRecord::Migration[6.0]
  def change
    change_column_default :rackets, :brand, 1
  end
end
