class Proyect < ActiveRecord::Base
  has_many :tasks

  validates :title, :presence => true
end
