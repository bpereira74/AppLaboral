class User < ApplicationRecord
      # Include default devise modules. Others available are:
      # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
      devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      has_one_attached :image
      # Relations
      has_many :offers
      has_many :postulants
  

  #enums
  enum:role,[:normal_user,:author,:admin]
end
