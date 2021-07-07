class Party < ApplicationRecord
    belongs_to :category
    has_many :party_supplies
    has_many :supplies, through: :party_supplies
    validates_presence_of :name, :category, :supplies, :budget
    validates :date, presence: true, uniqueness: true
    validates :budget, numericality: {greater_than_or_equal_to: 100, less_than_or_equal_to: 10000}
    validates :name, party_name: true

end
