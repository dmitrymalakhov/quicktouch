class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.references :application

      t.timestamps
    end
    add_index :screenshots, :application_id
  end
end
