class CreateMkbs < ActiveRecord::Migration
  def change
    create_table :mkbs do |t|
    	t.string :code, null: false
    	t.string :name
    	t.text   :description
    	
    end    
  end
end
