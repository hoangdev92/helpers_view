# frozen_string_literal: true

require_relative 'version'
require_relative 'render_modal'
require_relative 'render_button'
require_relative 'render_tooltip'
require_relative 'monney_vnd'
require_relative 'render_file_size'
module HelpersView
  module RailsHtml
    include HelpersView::RenderModal
    include HelpersView::RenderButton
    include HelpersView::RenderTooltip
    include HelpersView::MonneyVnd
    include HelpersView::RenderFileSize
  end
end
