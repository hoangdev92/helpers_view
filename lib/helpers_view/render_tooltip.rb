# frozen_string_literal: true

require_relative 'version'
require_relative 'common'
module HelpersView
  # module RenderTooltip
  module RenderTooltip
    include HelpersView::Common

    def render_tooltip_html(tag_name, content_ele = '', content = '', options = { html: false }, &block)
      theme = options[:theme] || :default
      version_bootstrap = options[:version_bootstrap] || 5
      toogle = bootstrap_version_4?(version_bootstrap) ? 'toggle' : 'bs-toggle'
      placement = bootstrap_version_4?(version_bootstrap) ? 'placement' : 'bs-placement'
      tag.send(tag_name, content_ele, data: { "#{toogle}": 'tooltip', html: options[:html], 'theme': theme,
                                              "#{placement}": options[:placement] },
                                      title: content, class: options[:class_name].to_s, &block)
    end
  end
end
