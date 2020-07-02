class StabalizingAsana < ApplicationRecord
  belongs_to :stabalizer, foreign_key: 'stabalizer_id', class_name: 'Asana'
  belongs_to :stabalizee, foreign_key: 'stabalizee_id', class_name: 'Asana'
end
