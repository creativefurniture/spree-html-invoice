module HtmlInvoice
  class Engine < Rails::Engine
    engine_name 'spree_html_invoice'
    
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/**/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
    
    config.to_prepare &method(:activate).to_proc
    
    # sets the manifests / assets to be precompiled, even when initialize_on_precompile is false
    initializer "html-invoice.assets.precompile", :group => :all do |app|
      app.config.assets.precompile += %w[
        admin/html_invoice.*
        admin/html_reciept.*
      ]
    end
    
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
