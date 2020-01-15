class RenameTypeToRackets < ActiveRecord::Migration[6.0]
  def change
    rename_column :rackets, :type, :grip
  end
end
