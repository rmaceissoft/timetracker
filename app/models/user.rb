class User < ActiveRecord::Base
  has_many :proyects, :foreign_key => "creator_id"

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :first_name, :last_name, :as => :admin

  def full_name
    [first_name, last_name].join(' ')
  end
end
