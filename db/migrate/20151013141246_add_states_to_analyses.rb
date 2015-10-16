class AddStatesToAnalyses < ActiveRecord::Migration
  def change
  	add_column :analyses, :state, :integer, nil: false
  	add_column :analyses, :previous_state, :integer, nil: false
  	add_column :analyses, :key_spid, :string
  	add_column :analyses, :key_onko, :string
  end
end
