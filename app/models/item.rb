# == Schema Information
#
# Table name: items
#
#  id                 :integer          not null, primary key
#  title              :string
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  image_url          :text
#  page_meta_id       :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :page_meta

  has_attached_file :image, storage: :elvfs, elvfs_url: Settings['storage.url']
  validates_attachment_file_name :image, matches: /./

  validates_presence_of :title, :image, :description
end
