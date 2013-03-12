class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :title
      t.text :description
      t.string :android_link
      t.string :ios_link
      t.string :locale
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size

      t.timestamps
    end
  end
end
