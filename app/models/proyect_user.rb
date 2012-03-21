class ProyectUser < ActiveRecord::Base
  # active record associations
  belongs_to :user
  belongs_to :proyect
  belongs_to :proyect_position

end
