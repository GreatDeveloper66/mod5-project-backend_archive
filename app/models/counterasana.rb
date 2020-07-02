class CounterAsana < ApplicationRecord
  belongs_to :counter, foreign_key: 'counter_id', class_name: 'Asana'
  belongs_to :countee, foreign_key: 'countee_id', class_name: 'Asana'
end
