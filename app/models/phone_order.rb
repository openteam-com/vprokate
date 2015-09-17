class PhoneOrder < ActiveRecord::Base
  validates_presence_of :fullname, :phone, :vehicle

  extend Enumerize
  enumerize :vehicle, in: [:bicycle, :motorbike, :bike, :car], predicates: true
end
