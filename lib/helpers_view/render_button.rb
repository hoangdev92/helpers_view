# frozen_string_literal: true

module HelpersView
  # module RenderButton
  module RenderButton
    def render_button_html(options = { text: 'Button', class: 'btn btn-primary', onclick: '', id: '', style: '' }, &block)
      options[:class] = default_class_button_of_gem(options)
      options[:type] = default_type_button_of_gem(options)
      tag.button(class: options[:class], onclick: options[:onclick], id: options[:id], style: options[:style],
                 type: options[:type]) do
        if block_given?
          yield
        else
          default_text_button_of_gem(options)
        end
      end
    end

    private

    def default_text_button_of_gem(options)
      options[:text] = options[:text] || 'button'
    end

    def default_class_button_of_gem(options)
      options[:class] = options[:class] || 'btn btn-primary'
    end

    def default_type_button_of_gem(options)
      options[:type] = options[:type] || 'button'
    end
  end
end
