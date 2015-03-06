class CreateCatAdditionInspections < ActiveRecord::Migration
  def change
    create_table :cat_addition_inspections do |t|
    	t.integer :id, null: false
    	t.string :name
    end
  end
end
