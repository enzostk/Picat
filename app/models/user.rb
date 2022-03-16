class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  #Callbacks
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now 
  end

    has_many :orders
    has_many :items, through: :orders
    has_many :items
    has_one :cart

end
