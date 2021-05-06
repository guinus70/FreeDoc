class Doctor < ApplicationRecord
	has_many :appointments, dependent: :destroy
	has_many :patients, through: :appointments
	belongs_to :city
	has_and_belongs_to_many :specialities #il détecte automatiquement que c'est à travers la table doctors_specialities
end
