module ApplicationHelper
  def page_meta
    @page_meta ||= PageMeta.find(1)
  end
end
