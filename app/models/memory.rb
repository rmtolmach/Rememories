class Memory < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :description, :author
end
