class RenameImagesColumnToImage < ActiveRecord::Migration[5.2]
  def change
      rename_column :gyms, :images, :image
  end
end
