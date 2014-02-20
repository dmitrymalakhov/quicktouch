class AddPriorityToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :priority, :integer, :default => 1
  end
end
