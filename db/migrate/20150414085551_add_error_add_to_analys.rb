class AddErrorAddToAnalys < ActiveRecord::Migration
  def change
  	add_column :analyses, :error_add, :boolean, default: false
  end
end
