class DeleteMagazineFromOenologist < ActiveRecord::Migration[5.2]
  def change
    remove_column :oenologists, :magazine
    remove_column :oenologists, :writer
    remove_column :oenologists, :editor
    remove_column :oenologists, :reviewer
  end
end
