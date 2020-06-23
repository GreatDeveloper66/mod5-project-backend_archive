class PreparationAsana < ApplicationRecord
  belongs_to :preparer, foreign_key: 'preparer_id', class_name: 'Asana'
  belongs_to :preparee, foreign_key: 'preparee_id', class_name: 'Asana'
end
