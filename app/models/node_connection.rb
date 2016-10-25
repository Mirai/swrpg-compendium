class NodeConnection < ActiveRecord::Base
  belongs_to :node
  belongs_to :connection, class_name: "Node"
end
