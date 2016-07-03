# == Schema Information
#
# Table name: phone_orders
#
#  id         :integer          not null, primary key
#  fullname   :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  vehicle    :string
#

class PhoneOrder < ActiveRecord::Base
  validates_presence_of :fullname, :phone, :vehicle

  extend Enumerize
  enumerize :vehicle, in: [:bicycle, :motorbike, :bike, :car], predicates: true
end
