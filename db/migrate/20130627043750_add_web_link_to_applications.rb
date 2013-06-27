class AddWebLinkToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :web_link, :string
  end
end
