module ApplicationHelper
  def resize_image(url: , width: 292, height: 292)
    url.gsub(%r(/\d*-\d*/), %Q(/#{width}-#{height}/))
  end
end
