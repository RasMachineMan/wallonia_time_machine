class RemoveTypeFromMedium < ActiveRecord::Migration
  def change
    remove_column :media, :type
  end
end
