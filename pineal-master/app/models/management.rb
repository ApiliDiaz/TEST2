class Management < ApplicationRecord
    belongs_to :vicepresidency
    has_many :superintendences, dependent: :destroy
end
