class ChangeDataTypeForListPrice < ActiveRecord::Migration
  change_table :homes do |t|
  	t.change :list_price, :string
  end
end
