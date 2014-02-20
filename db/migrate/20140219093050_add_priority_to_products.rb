class AddPriorityToProducts < ActiveRecord::Migration
  def change
    add_column :products, :priority, :integer, :default => 1
  end
end
