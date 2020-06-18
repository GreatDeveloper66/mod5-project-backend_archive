class OpeningAsana < ApplicationRecord
  belongs_to :opener, class_name: 'Asana'
  belongs_to :openee, class_name: 'Asana'
end
