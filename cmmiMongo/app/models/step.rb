class Step < ActiveRecord::Base
	belongs_to :user   
	belongs_to :practice
	validates :t_description, presence: true
end
