class Proyect < ActiveRecord::Base
  has_many :tasks
  belongs_to :invoice_cycle

  validates :title, :presence => true
end
