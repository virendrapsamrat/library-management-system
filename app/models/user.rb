class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  after_create :welcome_email1111111

  # def email
  #   #UserMailer.welcome_email(@user).deliver_now
  # end











    #default :from => "noreply@myhost.com"

  def welcome_email1111111
   UserMailer.welcome_email(self).deliver_now
  end
end
