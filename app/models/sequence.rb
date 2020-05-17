class Sequence < ApplicationRecord
  belongs_to :user
  has_many :asanasequences
  has_many :asanas, through: :asanasequences

  def findasanasequences
    self.asanasequences.sort_by { |asanaseq| asanseq.order }
  end

  def findasanas
    self.findasanasequences.map { |aseq| aseq.asana }
  end

  def addasana(asana)
    self.duration += asana.duration
    Asanasequence.create({:asana_id => asana.id,
                          :sequence_id => self.id,
                          :order => self.findhighestorder})
  end

  def findhighestorder
    self.asanas.length
  end
  
  def remove_asana(asana_id)
	asanaseqs = self.asanasequences.find_all |asanaseq|
		asanaseq.id == asana_id
	end
	asanaseqs.destroy_all
  end
  
  def remove_asana_order(order)
	asanaseqs = self.asanasequences.find |asanaseq|
		asanaseq.order == order
	end
	asanaseqs.destroy_all
  end

end
