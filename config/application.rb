require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)
require_relative "../lib/request_timer"

module SupportHub
  class Application < Rails::Application
   config.x.support_email = "support@example.com"
   config.middleware.use RequestTimer

  end
end
