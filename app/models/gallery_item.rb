class GalleryItem < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :image, storage: :elvfs, elvfs_url: Settings['storage.url']
  validates_attachment_file_name :image, matches: /./

  validates_presence_of :title
end
