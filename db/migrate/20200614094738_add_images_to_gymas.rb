class AddImagesToGymas < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :images, :json, after: :address
  end
end
