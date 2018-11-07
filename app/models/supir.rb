class Supir < ApplicationRecord
	validates :first_name, presence: true # Make sure the owner's name is present.  
end
