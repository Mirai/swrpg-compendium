class ItemQuality < ActiveRecord::Base
  has_many :source_associations, as: :sourceable
  has_many :sources, through: :source_associations
end
