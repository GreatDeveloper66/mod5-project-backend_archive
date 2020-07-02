class CreateOpeningasanas < ActiveRecord::Migration[6.0]
  def change
    create_table :openingasanas do |t|
      t.integer :opener_id
      t.integer :openee_id
      t.timestamps
    end
  end
end
