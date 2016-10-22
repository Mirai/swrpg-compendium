class CreateNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :nodes do |t|
      t.references :tree, index: true, forieng_key: true
      t.references :ability, index: true, foreign_key: true
      t.integer :x
      t.integer :y
      t.integer :size, default: 1
      t.integer :cost

      t.timestamps
    end
  end
end
