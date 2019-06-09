class Vicepresidency < ApplicationRecord
    has_many :managements, dependent: :destroy
end
