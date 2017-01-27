class AddCategoryIdToMedicines < ActiveRecord::Migration[5.0]
  def change
    add_column :medicines, :category_id, :integer
  end
end
