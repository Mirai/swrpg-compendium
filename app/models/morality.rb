class Morality < ActiveRecord::Base
  belongs_to :source
  has_many :morality_rolls
end
