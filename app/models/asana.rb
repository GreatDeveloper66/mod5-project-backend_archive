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
  def createcounters(counter_asnas)
    counter_asanas.each do |counter_asana|
      counter_id = counter_asana.id
      countee_id = self.id
      CounterAsana.create({counter_id => counter_id, :countee_id => countee_id})
    end
  end

  def createopeners(opener_asnas)
    opener_asanas.each do |opener_asana|
      opener_id = opener_asana.id
      openee_id = self.id
      OpeningAsana.create({opener_id => opener_id, :openee_id => openee_id})
    end
  end

  def createpreparers(preparer_asnas)
    preparer_asanas.each do |preparer_asana|
      preparer_id = preparer_asana.id
      preparee_id = self.id
      PrearationAsana.create({preparer_id => preparer_id, :preparee_id => preparee_id})
    end
  end

end
