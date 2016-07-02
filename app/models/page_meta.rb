# == Schema Information
#
# Table name: page_meta
#
#  id                        :integer          not null, primary key
#  title                     :string
#  keywords                  :text
#  description               :text
#  og_title                  :string
#  og_description            :text
#  introduction              :text
#  og_image_file_name        :string
#  og_image_content_type     :string
#  og_image_file_size        :integer
#  og_image_updated_at       :datetime
#  og_image_url              :text
#  bicycle_discount_amount   :integer          default(20)
#  bicycle_price             :integer          default(290)
#  motorbike_price           :integer          default(950)
#  end_day                   :date             default(Thu, 30 Jul 2015)
#  motorbike_discount_amount :integer          default(30)
#  slug                      :string
#

class PageMeta < ActiveRecord::Base
  has_attached_file :og_image, storage: :elvfs, elvfs_url: Settings['storage.url']

  validates_attachment_file_name :og_image, matches: /./

  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true

  has_one :gallery, dependent: :destroy

  def localized_slug
    I18n.t %Q(page_meta.#{slug})
  end
end
