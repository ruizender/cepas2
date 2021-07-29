class AddJobToOenologist < ActiveRecord::Migration[5.2]
  def change
    add_column :oenologists, :editor, :boolean, default: false
    add_column :oenologists, :writer, :boolean, default: false
    add_column :oenologists, :reviewer, :boolean, default: false
  end
end
