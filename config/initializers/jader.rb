Jader.configure do |config|
  # make your client-side views directory discoverable to Rails
  config.views_path = Rails.root.join('app','assets','javascripts','templates')
end
