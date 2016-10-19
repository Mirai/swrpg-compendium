class Career < ActiveRecord::Base
  belongs_to :source

  serialize :career_skills, Array
end
