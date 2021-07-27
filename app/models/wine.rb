class Wine < ApplicationRecord
  has_many :wine_strains, dependent: :destroy
  has_many :strains, through: :wine_strains
  accepts_nested_attributes_for :wine_strains, reject_if: :all_blank, allow_destroy: true

    def strain_and_percent
    namepercen = []
    wine_strains.map do |winestrain|
        namepercen.push [winestrain.strain.name, winestrain.percentage] 
    end
    namepercen.sort_by{ |array| array[0] }.map do |strain|
        "#{strain[0]} (#{strain[1]})%"
    end.join(', ')
end

end
