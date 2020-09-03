class AddStateToTodon < ActiveRecord::Migration[6.0]
  def change
    add_column :todons, :done, :boolean , :default => false
  end
end
