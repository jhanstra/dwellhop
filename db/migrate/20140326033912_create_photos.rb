class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :home_id
      t.text :description
      t.string :photo_type

      t.timestamps
    end
  end
end
