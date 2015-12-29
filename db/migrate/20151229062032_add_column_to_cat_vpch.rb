class AddColumnToCatVpch < ActiveRecord::Migration
  def change
    add_column :cat_vpches, :description, :string
    add_column :cat_vpches, :interpretation, :string
  end
end