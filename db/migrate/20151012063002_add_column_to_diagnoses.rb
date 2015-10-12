class AddColumnToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :analyses_id, :integer, null: false
    add_index :diagnoses, :analyses_id
  end

end
