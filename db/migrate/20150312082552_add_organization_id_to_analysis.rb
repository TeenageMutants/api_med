class AddOrganizationIdToAnalysis < ActiveRecord::Migration
  def change
  	add_column :analyses, :organization_id, :integer
  end
end
