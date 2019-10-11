class AddImageToEvent < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :img, :string
  end
end
