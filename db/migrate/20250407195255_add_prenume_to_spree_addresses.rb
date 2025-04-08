class AddPrenumeToSpreeAddresses < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_addresses, :prenume, :string
  end
end
