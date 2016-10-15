class SourceAssociation < ActiveRecord::Base
  belongs_to :source
  belongs_to :sourceable, polymorphic: true
end
