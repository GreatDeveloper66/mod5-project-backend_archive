class PreparationAsana < ApplicationRecord
  belongs_to :preparer, class_name: 'Asana'
  belongs_to :preparee, class_name: 'Asana'
end
