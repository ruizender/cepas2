class AddScoreToWine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :score, :integer, default: 0
  end
end
