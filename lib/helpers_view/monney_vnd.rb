# frozen_string_literal: true

module HelpersView
  # module monney_vnd
  module MonneyVnd
    def render_monney_vnd_html(amount, options = {})
      monney = render_monney_vnd_of_gem(amount, options)
      "#{monney} VND"
    end

    private

    def render_monney_vnd_of_gem(amount, options)
      separator = render_separator_of_gem(options)
      unit = render_unit_of_gem(options)
      precision = render_precision_of_gem(options)
      delimiter = render_delimiter_of_gem(options)
      round_mode = render_round_mode_of_gem(options)
      number_to_currency(
        amount, unit: unit, delimiter: delimiter, separator: separator, precision: precision, round_mode: round_mode
      )
    end

    def render_round_mode_of_gem(options)
      options[:round_mode] = options[:round_mode] || :up
    end

    def render_delimiter_of_gem(options)
      options[:delimiter] = options[:delimiter] || '.'
    end

    def render_separator_of_gem(options)
      options[:separator] = options[:separator] || ','
    end

    def render_unit_of_gem(options)
      options[:unit] = options[:unit] || ''
    end

    def render_precision_of_gem(options)
      options[:precision] = options[:precision] || 0
    end
  end
end
