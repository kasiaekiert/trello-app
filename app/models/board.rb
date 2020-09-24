class Board < ApplicationRecord
    has_many :lists
    has_many :tickets, through: :lists
    validates :title, presence: true
end