class Wine < ApplicationRecord
  has_many :wine_strains, dependent: :destroy
  has_many :strains, through: :wine_strains
  accepts_nested_attributes_for :wine_strains, reject_if: :all_blank, allow_destroy: true


end
