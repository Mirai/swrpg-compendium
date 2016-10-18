class Morality < ActiveRecord::Base
  enum emotion: [:strength, :weakness, :other]
end
