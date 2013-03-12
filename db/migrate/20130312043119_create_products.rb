class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :locale
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size

      t.timestamps
    end
  end
end
