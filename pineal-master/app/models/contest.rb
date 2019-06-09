class Contest < ApplicationRecord

    validates :f_creacion, presence: true, :null => false

    belongs_to :position
    has_many :postulants, dependent: :destroy
end
