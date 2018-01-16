class Site < ApplicationRecord
	
	has_many :employees

	has_many :permits
end
