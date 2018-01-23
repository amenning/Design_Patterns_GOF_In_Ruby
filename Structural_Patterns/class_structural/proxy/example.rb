require_relative 'real_image.rb'
require_relative 'proxy_image.rb'

puts 'Open pretend document with real image'
immediate_image = RealImage.new('Real')
puts 'Scroll down page so image is on page'
immediate_image.display

puts "\n" + 'Open pretend document with proxy image'
proxy_image = ProxyImage.new('Proxy')
puts 'Scroll down page so image is on page'
proxy_image.display
