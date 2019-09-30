class Acquisition < ApplicationRecord
        # ------------------shows relationship to vinyl
    belongs_to :vinyl
        # ------------------validations for all acquisition entries
    validates :acquired_month, :acquired_year, :vinyl_id, presence: true
    validates :vinyl_id, uniqueness: true
    
end
