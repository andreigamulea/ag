class AddNameToSpreeUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_users, :name, :string
  end
end
