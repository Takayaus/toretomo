class AddReferencesToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :trainer, index: true, foreign_key: true
  end
end
