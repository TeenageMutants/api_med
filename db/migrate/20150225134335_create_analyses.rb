class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
    	t.integer :id, null: false
    	t.integer :user_id, index: true, null: false
    	t.integer :patient_id, index: true, null: false
    	t.belongs_to :cat_citology, index: true
        t.belongs_to :cat_vpch, index: true
    	t.belongs_to :cat_addition_inspection, index: true
    	t.text :diagnostic
    	t.text :redirect
    	t.boolean :visual, default: false
    	t.integer :registry_id, index: true
    	t.string :analys_key
    	t.timestamp :reception_at
    	t.timestamp :registry_at
      t.timestamps
    end
  end
end