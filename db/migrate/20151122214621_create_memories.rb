class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.text :memory
      t.string :author
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
