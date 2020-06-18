class StabalizingAsana < ApplicationRecord
  belongs_to :stabalizer, class_name: 'Asana'
  belongs_to :stabalizee, class_name: 'Asana'
end
