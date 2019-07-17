class CreateRootes < ActiveRecord::Migration[5.2]
  def change
    create_table :rootes do |t|
      t.string :name
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
