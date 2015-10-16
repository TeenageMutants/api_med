class CreateCatErrors < ActiveRecord::Migration
  def change
    create_table :cat_errors do |t|
      t.integer :id, null: false
      t.string :name, null: false
      t.text :description
    end
  end
end
