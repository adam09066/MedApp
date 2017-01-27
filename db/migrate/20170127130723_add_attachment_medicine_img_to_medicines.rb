class AddAttachmentMedicineImgToMedicines < ActiveRecord::Migration
  def self.up
    change_table :medicines do |t|
      t.attachment :medicine_img
    end
  end

  def self.down
    remove_attachment :medicines, :medicine_img
  end
end
