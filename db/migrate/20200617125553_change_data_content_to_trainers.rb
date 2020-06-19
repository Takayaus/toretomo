class ChangeDataContentToTrainers < ActiveRecord::Migration[5.2]
  def change
    change_column :trainers, :content, :text
  end
end
