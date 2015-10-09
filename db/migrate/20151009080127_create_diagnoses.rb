class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
		t.text :diagnostics
		t.integer :user_id
    	t.timestamp :next_visit_algorithm 
    	t.timestamp :next_visit
    	
    	t.boolean :closed, default: false
    	t.belongs_to :mkb, index: true, null: false
     	t.timestamps
    end
    add_index :diagnoses, :mkb_id
    add_index :diagnoses, :user_id
  end
end
