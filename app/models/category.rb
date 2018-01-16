class Category < ApplicationRecord
	has_many :questions

	has_many :permits
end
