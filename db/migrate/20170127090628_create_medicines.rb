class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
