class User < ApplicationRecord
	validates :nombre, presence: true,  length: { in: 1..30 }
	validates :apellido, presence: true,  length: { in: 1..30 }
	validates :password, presence: true,  length: { in: 8..30 }
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_format_of :username, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	end
