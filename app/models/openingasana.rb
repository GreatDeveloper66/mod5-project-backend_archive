class OpeningAsana < ApplicationRecord
  belongs_to :opener, foreign_key: 'opener_id', class_name: 'Asana'
  belongs_to :openee, foreign_key: 'openee_id', class_name: 'Asana'
end
