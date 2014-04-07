class AddAddressLineTwoToHome < ActiveRecord::Migration
  def change
    add_column :homes, :address_line_2, :string
  end
end
