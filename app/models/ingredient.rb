class Ingredient < ApplicationRecord
	belongs_to :recipe
	
	validates :name, :amount, :measure, presence: true
	validates_inclusion_of :measure, :in => ['c', 'tbsp', 'tsp', 'lb', 'oz', 'g', 'ea'] #same as /_form
end
