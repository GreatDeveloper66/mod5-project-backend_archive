class CreatePreparationasanas < ActiveRecord::Migration[6.0]
  def change
    create_table :preparationasanas do |t|
      t.integer :preparer_id
      t.integer :preparee_id
      t.timestamps
    end
  end
end
