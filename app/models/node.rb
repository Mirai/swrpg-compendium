class Node < ActiveRecord::Base
  belongs_to :tree
  belongs_to :ability

  has_many :node_connections
  has_many :connections, through: :node_connections
end
