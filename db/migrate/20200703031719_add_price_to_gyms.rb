class AddPriceToGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :price, :integer, after: :address
  end
end
