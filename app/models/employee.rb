class Employee < ApplicationRecord

	belongs_to :site

	has_many :permits
end
