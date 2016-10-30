class CreateItemQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :item_qualities do |t|
      t.string :name
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
