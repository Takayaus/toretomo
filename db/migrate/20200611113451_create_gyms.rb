class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :number
      t.string :address

      t.timestamps
    end
  end
end
