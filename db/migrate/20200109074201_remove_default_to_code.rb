class RemoveDefaultToCode < ActiveRecord::Migration[6.0]
  def change
    change_column_default :rackets, :code, nil
  end
end
