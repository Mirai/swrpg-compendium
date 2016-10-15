class Adversary < ActiveRecord::Base
  enum adversary_type: [:minion, :rival, :nemesis]

  serialize :skills, Array
  serialize :talents, Array
  serialize :abilities, Array
  serialize :equipment, Array

  has_many :source_associations, as: :sourceable
  has_many :sources, through: :source_associations
end
