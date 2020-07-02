class Asana < ApplicationRecord
  has_many :asanasequences
  has_many :sequences, through: :asanasequences
  has_many :asanacategories
  has_many :categories, through: :asanacategories
  has_many :openee_asanas, foreign_key: :openee_id, class_name: 'OpeningAsana'
  has_many :openers, through: :openee_asanas
  has_many :countee_asanas, foreign_key: :countee_id, class_name: 'CounterAsana'
  has_many :counters, through: :countee_asanas
  has_many :stabalizee_asanas, foreign_key: :stabalizee_id, class_name: 'StabalizingAsana'
  has_many :stabalizers, through: :stabalizee_asanas
  has_many :preparee_asanas, foreign_key: :preparee_id, class_name: 'PreparationAsana'
  has_many :preparers, through: :preparee_asanas


  def self.createasana(asanarray)
    self.create({:sanskritname => asanarray[0],
                  :englishname => asanarray[1],
                  :picurl => asanarray[2],
                  :duration => asanarray[3],
				  :cues => asanarray[4]})
  end
end
