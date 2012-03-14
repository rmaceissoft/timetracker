class InvoiceCycle < ActiveRecord::Base
  has_many :proyects, :dependent => :destroy

  def to_s
    cycle
  end
end
