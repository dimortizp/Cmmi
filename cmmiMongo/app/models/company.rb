class Company < ActiveRecord::Base
	validates :t_name, presence: true

	has_attached_file :processmap
	validates_attachment_content_type :processmap, :content_type => 'text/plain'

end


