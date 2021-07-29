class Oenologist < ApplicationRecord
  has_many :oenologist_magazines, dependent: :destroy
  has_many :magazines, through: :oenologist_magazines
end
