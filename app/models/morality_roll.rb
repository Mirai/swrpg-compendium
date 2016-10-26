class MoralityRoll < ActiveRecord::Base
  enum emotion: [:strength, :weakness, :other]

  belongs_to :morality
end
