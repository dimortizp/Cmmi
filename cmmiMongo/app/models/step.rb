class Step < ActiveRecord::Base
	extend ActsAsTree::TreeWalker

	belongs_to :user   
 	belongs_to :practice
	validates :t_description, presence: true

	acts_as_tree order: "n_yeststep"
end
