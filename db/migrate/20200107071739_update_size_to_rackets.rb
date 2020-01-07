class UpdateSizeToRackets < ActiveRecord::Migration[6.0]
  def change
    change_column :rackets, :size, :string
  end
end
