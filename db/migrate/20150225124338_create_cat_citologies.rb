class CreateCatCitologies < ActiveRecord::Migration
  def change
    create_table :cat_citologies do |t|
    	t.integer :id, null: false
    	t.string :name
      t.timestamps
    end
  end
end
