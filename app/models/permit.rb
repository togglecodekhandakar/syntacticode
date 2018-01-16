class Permit < ApplicationRecord
	has_many :permitdetails

	belongs_to :category
	belongs_to :employee
	belongs_to :site
end
