class AddPaperclipToScreenshots < ActiveRecord::Migration
  def change
    add_column :screenshots, :image_file_name, :string
    add_column :screenshots, :image_content_type, :string
    add_column :screenshots, :image_file_size, :integer
  end
end
