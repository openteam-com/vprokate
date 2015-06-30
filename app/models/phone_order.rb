class PhoneOrder < ActiveRecord::Base
  validates_presence_of :fullname, :phone
end
