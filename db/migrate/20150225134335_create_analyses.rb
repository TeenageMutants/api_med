class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
    	t.integer :id, null: false
    	t.integer :user_id, index: true, null: false
    	t.integer :patient_id, index: true, null: false
    	t.belongs_to :cat_catology, index: true, null: false
    	t.belongs_to :cat_addition_inspection, index: true, null: false
    	t.text :diagostic
    	t.text :redirect, null: false
    	t.boolean :visual, default: false
    	t.integer :registry_id, index: true
    	t.string :analys_key
    	t.timestamp :reception_at
    	t.timestamp :registry_at
      t.timestamps
    end
  end
end