module ApplicationHelper
  def resize_image(url: , width: 278, height: 292)
    url.gsub(%r(/\d*-\d*/), %Q(/#{width}-#{height}!mn/))
  end
end
