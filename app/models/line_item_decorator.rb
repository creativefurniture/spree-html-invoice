Spree::LineItem.class_eval do
  def tax_price
    return self.price 
  end
end
