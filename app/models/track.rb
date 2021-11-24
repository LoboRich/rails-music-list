class Track < ApplicationRecord
	validates :url, :name, :credits, :available, presence: true 
end