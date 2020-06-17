class AddImagesToGymas < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :images, :string, after: :address
  end
end
