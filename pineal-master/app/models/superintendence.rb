class Superintendence < ApplicationRecord
    belongs_to :management
    has_many :positions, dependent: :destroy
end
