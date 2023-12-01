class AddUserToBook < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :books, :user
  end
end
