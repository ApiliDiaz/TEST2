class Position < ApplicationRecord
    belongs_to :superintendence
    has_many :contests, dependent: :destroy
end
