# frozen_string_literal: true

Kaminari.configure do |config|
  config.default_per_page = 20
  config.max_per_page = 100
  config.window = 4
  config.outer_window = 2
  config.left = 2
  config.right = 2
  config.page_method_name = :page
  config.param_name = :page
  # config.max_pages = nil
  # config.params_on_first_page = false
end
