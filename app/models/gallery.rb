class Gallery < ActiveRecord::Base
  belongs_to :page_meta

  has_many :gallery_items, dependent: :destroy

  accepts_nested_attributes_for :gallery_items, allow_destroy: true

  validates :title, :page_meta, presence: true
end
