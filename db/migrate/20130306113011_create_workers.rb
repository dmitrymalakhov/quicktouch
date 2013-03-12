class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :job
      t.string :phone
      t.string :email
      t.string :skype
      t.string :region
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size

      t.timestamps
    end
  end
end
