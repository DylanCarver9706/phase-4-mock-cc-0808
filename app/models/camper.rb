class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    # validates :name, presence: true
    # validates :name, inclusion: true
    # validates :age, length: { in: 8..18 }
end
