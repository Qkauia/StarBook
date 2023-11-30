class AddOnsaleToBook < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :onsale, :boolen, default: false
  end
end
