class Ability < ActiveRecord::Base
  enum ability_type: [:talent, :force_power]

  has_many :source_associations, as: :sourceable
  has_many :sources, through: :source_associations
end
