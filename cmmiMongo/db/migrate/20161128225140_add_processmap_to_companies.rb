class AddProcessmapToCompanies < ActiveRecord::Migration
  def change
  	add_attachment :companies, :processmap
  end
end
