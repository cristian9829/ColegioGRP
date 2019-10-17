class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :description
      t.string :likes_counter

      t.timestamps
    end
  end
end
