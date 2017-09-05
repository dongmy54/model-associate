class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string  :name
      t.integer :imageable_id,   index: true
      t.string  :imageable_type, index: true

      t.timestamps
    end
  end
end
