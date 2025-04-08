class AddPrenumeToSpreeUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_users, :prenume, :string
  end
end
