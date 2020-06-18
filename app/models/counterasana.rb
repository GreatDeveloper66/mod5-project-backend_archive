class CounterAsana < ApplicationRecord
  belongs_to :counter, class_name: 'Asana'
  belongs_to :countee, class_name: 'Asana'
end
