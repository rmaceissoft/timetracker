class EndCustomer < ActiveRecord::Base
  # active record associations
  belongs_to :client

  # validation rules
  validates :client, :presence => true
end
