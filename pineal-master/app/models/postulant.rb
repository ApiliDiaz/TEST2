class Postulant < ApplicationRecord
    belongs_to :contest
    belongs_to :origin
end
