class User < ApplicationRecord
	validates :name,:lastName,:email,:password,:birthDate,:rut, presence: true

end
