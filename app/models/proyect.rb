class Proyect < ActiveRecord::Base
  has_many :tasks
  belongs_to :invoice_cycle
  belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"

  validates :title, :presence => true
end
