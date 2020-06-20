class CreateCounterasanas < ActiveRecord::Migration[6.0]
  def change
    create_table :counterasanas do |t|
      t.integer :counter_id
      t.integer :countee_id
    end
  end
end
