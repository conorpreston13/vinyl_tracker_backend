class Vinyl < ApplicationRecord
        # ------------------shows relationship to acquisitions
    has_many :acquisitions
        # ------------------validations for vinyl entries
    validates :artist, :album, :release_year, presence: true
    validates :album, uniqueness: true
    
end
