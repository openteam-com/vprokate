module ApplicationHelper
  def page_meta
    @page_meta ||= PageMeta.find(1)
  end

  def discount_price(item)
    price = (page_meta.send("#{item}_price").to_f / 100 * (100 - page_meta.discount_amount))
    price.to_i/10*10
  end
end
