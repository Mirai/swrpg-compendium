class CreateNodeConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :node_connections do |t|
      t.references :node, index: true, foreign_key: true
      t.references :connection, index: true

      t.timestamps
    end
  end
end
