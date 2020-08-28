class Board < ApplicationRecord
    has_many :lists
    validates :title, presence: true

    accepts_nested_attributes_for :lists
end
