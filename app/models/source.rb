class Source < ActiveRecord::Base
  enum setting: [:edge_of_the_empire, :age_of_rebellion, :force_and_destiny, :the_force_awakens]
end
