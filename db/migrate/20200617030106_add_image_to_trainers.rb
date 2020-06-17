class AddImageToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :image, :string, after: :profile
  end
end
