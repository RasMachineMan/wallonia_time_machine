class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :url
      t.string :type
      t.string :description
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :media, :events
  end
end
