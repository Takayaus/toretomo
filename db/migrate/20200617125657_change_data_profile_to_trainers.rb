class ChangeDataProfileToTrainers < ActiveRecord::Migration[5.2]
  def change
    change_column :trainers, :profile, :text
  end
end
