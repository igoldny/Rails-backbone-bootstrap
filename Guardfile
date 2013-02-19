require 'capybara/poltergeist'
guard :konacha, :driver => :poltergeist, :port => 5050 do
  watch(%r{^app/assets/javascripts/(.*)\.js(\.coffee)?$}) { |m| "#{m[1]}_spec.js" }
  watch(%r{^spec/javascripts/.+_spec(\.js|\.js\.coffee)$})
end
