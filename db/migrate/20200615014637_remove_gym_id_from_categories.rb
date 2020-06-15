class RemoveGymIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :gym_id, :integer
  end
end
