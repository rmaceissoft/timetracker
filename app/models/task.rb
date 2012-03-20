class Task < ActiveRecord::Base

  # class constants
  # get an array with 0.0, 0.25, 0.50, 0.75, ...
  @@hours_options = 0.step(3, 0.25).collect {|x| x}

  # active record associations
  belongs_to :proyect
  belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"


  # valudation rules
  validates :hours, :inclusion => { :in => @@hours_options }

  # helper methods
  # helper to get hours options
  def self.get_hours_options
    @@hours_options.map{ |z| [z,z]}
  end
end
