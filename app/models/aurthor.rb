class Aurthor < ApplicationRecord
    has_many :books
    belongs_to :category
end
