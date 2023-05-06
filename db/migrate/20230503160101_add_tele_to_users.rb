class AddTeleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tele, :integer
  end
end
