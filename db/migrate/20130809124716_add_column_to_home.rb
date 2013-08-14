class AddColumnToHome < ActiveRecord::Migration
  def change
    add_column :homes, :city, :string
    add_column :homes, :country, :string
    add_column :homes, :street, :string
  end
end
