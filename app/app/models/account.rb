class Account < ApplicationRecord

  	validates :account, uniqueness: true
  	validates :balance, presence: true
end
