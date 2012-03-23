class Task < ActiveRecord::Base

  # class constants
  # get an array with 0.0, 0.25, 0.50, 0.75, ...
  @@hours_options = 0.step(3, 0.25).collect {|x| x}
  @@statuses_options = { "u" => "Unreviewed", "uc" => "Unreviewed changed", "nc" => "Need Correction", "r" => "Reviewed"}

  # active record associations
  belongs_to :proyect
  belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"


  # valudation rules
  validates :hours, :inclusion => { :in => @@hours_options }
  validates :proyect, :status, :presence => true

  # callbacks
  after_initialize do |obj|
    if obj.new_record?
      # initialize all task with unreviewed state
      obj.status = "u"
    end
  end

  # helper methods
  # helper to get hours options
  def self.get_hours_options
    @@hours_options.map{ |z| [z,z]}
  end

  def self.get_statuses_options
    @@statuses_options.map  { |k, v| [k, v] }
  end

  # instance methods
  # simulating django's get_FOO_display model instance method
  def get_status_display
    @@statuses_options[status]
  end
end
