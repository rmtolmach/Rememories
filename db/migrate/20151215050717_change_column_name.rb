class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :memories, :memory, :description
  end
end
