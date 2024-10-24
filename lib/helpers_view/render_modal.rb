# frozen_string_literal: true

require_relative 'version'
require_relative 'common'
module HelpersView
  # render modal
  module RenderModal
    include HelpersView::Common

    def render_modal_html(id: '', width_class: '', body_class: '', backdrop: '', keyboard: true, class_modal: '')
      tag.div(class: "modal #{class_modal}", id: id, 'data-backdrop': backdrop, 'data-keyboard': keyboard) do
        tag.div(class: "modal-dialog modal-dialog-centered #{width_class}") do
          tag.div(class: 'modal-content') do
            render_modal_body_of_gem(body_class)
          end
        end
      end
    end

    private

    def render_modal_body_of_gem(body_class)
      tag.div(class: "modal-body #{body_class}") do
        if block_given?
          yield
        else
          'No content'
        end
      end
    end
  end
end
