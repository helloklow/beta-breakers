class CreateRootes < ActiveRecord::Migration[5.2]
  def change
    create_table :rootes do |t|
      t.string :name
      t.string :category
      t.string :location
      t.string :difficulty
      t.text :content
      t.integer :author_id

      t.timestamps
    end
  end
end
