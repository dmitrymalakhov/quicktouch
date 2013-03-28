class AddLocaleToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :locale, :string
  end
end
