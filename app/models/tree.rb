class Tree < ActiveRecord::Base
  enum tree_type: [:specialization, :force_power]

  serialize :career_skills, Array

  belongs_to :career
end
