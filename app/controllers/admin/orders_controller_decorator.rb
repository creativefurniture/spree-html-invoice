Spree::Admin::OrdersController.class_eval do

  def invoice
    template = params[:template]
    load_order
    eval "@#{template} = true"
    @order = Spree::Order.find_by_number(params[:id])
    render  template , :layout => false
  end
  
end