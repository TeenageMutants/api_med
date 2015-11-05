class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
  		t.belongs_to :organization
  		t.integer :primary_reception
  		t.integer :finished_reception
  		t.timestamp :date
    end
  end
end
