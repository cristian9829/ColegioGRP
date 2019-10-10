class AddHeaderEventToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :header_events, :string
  end
end
