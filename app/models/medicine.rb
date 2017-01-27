class Medicine < ApplicationRecord
	belongs_to :category

	has_attached_file :medicine_img, :styles => { :medicine_index => "250x350>", :medicine_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :medicine_img, :content_type => /\Aimage\/.*\z/
end
