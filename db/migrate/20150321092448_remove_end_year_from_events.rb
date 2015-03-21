class RemoveEndYearFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :end_year
  end
end
