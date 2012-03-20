class ProyectStatus < ActiveRecord::Base
  # class constants

  # active record associations
  has_many :proyects, :foreign_key => "status_id"


  # valudation rules
  validates :name, :presence => true, :uniqueness => true

  # callbacks
  after_initialize do |obj|
    if obj.new_record?
      obj.active = true
    end
  end

end
