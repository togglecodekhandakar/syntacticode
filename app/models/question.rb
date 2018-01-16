class Question < ApplicationRecord
	belongs_to :parttype
	belongs_to :questiontype
	belongs_to :category

	
end
