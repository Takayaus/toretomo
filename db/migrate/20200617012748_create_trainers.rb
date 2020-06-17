class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name, null: false, unique: true 
      t.integer :age
      t.string :number
      t.string :email, null: false, unique: true
      t.string :title
      t.string :content
      t.string :profile

      t.timestamps
    end
  end
end
