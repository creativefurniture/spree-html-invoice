version = '0.0.1'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_html_invoice'
  s.version     = '1.0.1'
  s.authors     = ["Nicholas Watson"]
  s.email       = 'nick@entropi.co'
  s.homepage    = 'http://github.com/entropillc/spree-html-invoice'
  s.summary     = 'HTML Invoice Template for spree'
  s.description = 'HTML Invoice Template for spree'

  s.files        = Dir['README.markdown', 'lib/**/*', 'app/**/*', 'confi/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency 'spree_core', '>= 1.0.0'
  s.add_dependency 'spree_auth', '>= 1.0.0'

end
