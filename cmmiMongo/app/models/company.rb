class Company < ActiveRecord::Base
	validates :t_name, presence: true

	has_attached_file :processmap, styles: { medium: "300x300>", thumb: "100x100!" }
	validates_attachment_content_type :processmap, :content_type => /\Aimage\/.*\Z/
end
