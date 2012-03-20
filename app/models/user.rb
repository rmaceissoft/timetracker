class User < ActiveRecord::Base
  # active record associations
  has_many :proyects, :foreign_key => "creator_id"
  has_many :tasks, :foreign_key => "creator_id"

  # validation rules

  # security options
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :first_name, :last_name, :as => :admin

  # third party options
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # helper methods
  def full_name
    [first_name, last_name].join(' ')
  end
end
