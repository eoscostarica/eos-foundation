class Project < ApplicationRecord

	STATUS = ['Candidate', 'Under Review', 'Registered', 'Inactive']

	has_one :category

  	validates :name, uniqueness: true
  	validates :name_zh, uniqueness: true
end
