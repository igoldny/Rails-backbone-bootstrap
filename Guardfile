guard 'livereload' do
  watch(%r{app/views/.+\.(slim)$})
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end
