class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
			t.integer :place_id
			t.text :caption
			t.timestamps
    end
 	
 	add_index :photos, [:caption, :place_id]
	add_index :photos, :place_id
 end
end