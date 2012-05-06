Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                     :name => "Add buttons to sidebar on order show",
                     :insert_after => ".sidebar",
                     :partial => "spree/admin/orders/html_buttons",
                     :disabled => false)