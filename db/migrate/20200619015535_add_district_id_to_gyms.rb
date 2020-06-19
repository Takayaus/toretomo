class AddDistrictIdToGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :district_id, :integer, after: :image
  end
end
