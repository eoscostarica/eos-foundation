class Project < ApplicationRecord

	STATUS = ['Candidate','Under Review', 'Registered']

	has_and_belongs_to_many :categories

  	validates :name, uniqueness: true
  	validates :name_zh, uniqueness: true
end
