class Proyect < ActiveRecord::Base
  # active record associations
  has_many :tasks
  belongs_to :invoice_cycle
  belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"
  belongs_to :status, :foreign_key => "status_id", :class_name => "ProyectStatus"

  # validation rules
  validates :title, :presence => true
  validates :status, :presence => true
end
