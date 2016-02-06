class Person < ActiveRecord::Base
  has_many :memories
  validates :name, presence: true
end
