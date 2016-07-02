module ApplicationHelper
  def resize_image(url: , width: 200, height: 200)
    url.gsub(%r(/\d*-\d*/), %Q(/#{width}-#{height}/))
  end
end
