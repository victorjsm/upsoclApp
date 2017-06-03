class User < ApplicationRecord
	validates :name,:lastName,:email,:password,:birthDate,:rut, presence: true
	has_many :socials, dependent: :destroy
end
