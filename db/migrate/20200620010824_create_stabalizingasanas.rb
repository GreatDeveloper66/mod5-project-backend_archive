class CreateStabalizingasanas < ActiveRecord::Migration[6.0]
  def change
    create_table :stabalizingasanas do |t|
      t.integer :stabalizer_id
      t.integer :stabalizee_id
      t.timestamps
    end
  end
end
