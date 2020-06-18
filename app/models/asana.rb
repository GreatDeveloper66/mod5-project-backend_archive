class Asana < ApplicationRecord
  has_many :asanasequences
  has_many :sequences, through: :asanasequences
  has_many :asanacategories
  has_many :categories, through: :asanacategories
  has_many :opener_asanas, foreign_key: :opener_id, class_name: 'OpeningAsana'
  has_many :openees, through: :opener_asanas

  def self.createasana(asanarray)
    self.create({:sanskritname => asanarray[0],
                  :englishname => asanarray[1],
                  :picurl => asanarray[2],
                  :duration => asanarray[3],
				  :cues => asanarray[4]})
  end
end
