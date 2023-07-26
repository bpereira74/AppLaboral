class Offer < ApplicationRecord
      #relations
      has_many :postulants
      belongs_to:user
      
end
