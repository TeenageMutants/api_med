class CreateCatVpches < ActiveRecord::Migration
  def change
    create_table :cat_vpches do |t|
    	t.integer :id, null: false
    	t.string :name
    end
  end
end
