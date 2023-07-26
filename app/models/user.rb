class User < ApplicationRecord
  # Relations
      #has_many :offers
      has_many :postulants
      # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
      devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

  #enums
  enum:role,[:normal_user,:author,:admin]
end
