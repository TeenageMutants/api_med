class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
    	t.integer :id, null: false
    	t.string :name
    	t.string :registry_key
      t.integer :user_id, index: true, null: false
      t.timestamp :date_begin
      t.timestamp :date_end
      t.integer :organization_id
      t.timestamps
    end
  end
end
