class AddIconTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :icon_type, :string
  end
end
