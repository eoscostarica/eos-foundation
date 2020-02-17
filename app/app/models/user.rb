class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable, 
  #:recoverable, :rememberable, :validatable
  devise :registerable, :database_authenticatable, :validatable, :rememberable, :trackable
end
