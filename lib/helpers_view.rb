# frozen_string_literal: true

require_relative 'helpers_view/rails_html'
require_relative 'helpers_view/version'

# class Railtie initializer action_view
class Railtie < ::Rails::Railtie
  initializer 'helpers_view.rails_html' do
    ActiveSupport.on_load(:action_view) do
      include HelpersView::RailsHtml
    end
  end
end
