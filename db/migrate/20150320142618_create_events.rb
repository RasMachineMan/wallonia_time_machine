class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :start_year
      t.integer :end_year
      t.string :type
      t.float :latitude
      t.float :longitude
      t.string :url

      t.timestamps null: false
    end
  end
end
