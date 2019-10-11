class CreateCentroInteres < ActiveRecord::Migration[5.2]
  def change
    create_table :centro_interes do |t|
      t.string :title
      t.text :description
      t.string :img
      t.string :schedule
      t.text :requirements

      t.timestamps
    end
  end
end
