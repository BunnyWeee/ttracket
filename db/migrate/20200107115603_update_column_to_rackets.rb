class UpdateColumnToRackets < ActiveRecord::Migration[6.0]
  def change
    change_column :rackets, :brand, :integer, using:'brand::integer'
  end
end
