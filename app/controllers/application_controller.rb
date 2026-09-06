class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  allow_browser versions: :modern
  stale_when_importmap_changes
end
