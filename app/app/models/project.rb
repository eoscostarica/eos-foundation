class Project < ApplicationRecord

	STATUS = ['Candidate','Under Review', 'Registered']

	belongs_to :category

  	validates :name, uniqueness: true
  	validates :name_zh, uniqueness: true
end
