class UpdateV2SizeToRackets < ActiveRecord::Migration[6.0]
  def change
    change_column_default :rackets, :size, nil
  end
end
