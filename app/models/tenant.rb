class Tenant < ApplicationRecord
    has_many :apartments
    has_many :leases

    validates :name, presence: true
    validates :age, numericality: { greater_than_orequal_to: 18, message: "must be 18 or older" }
end
