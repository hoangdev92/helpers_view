# frozen_string_literal: true

module HelpersView
  # module RenderFileSize
  module RenderFileSize
    def render_file_size_html(file_size, number_round = 2)
      return "#{file_size} B" if file_size < 1024
      return "#{(file_size / 1024.0).round(number_round)} KB" if file_size < 1024 * 1024
      return "#{(file_size / (1024.0 * 1024)).round(number_round)} MB" if file_size < 1024 * 1024 * 1024
      return "#{(file_size / (1024.0 * 1024 * 1024)).round(number_round)} GB" if file_size < 1024 * 1024 * 1024 * 1024

      "#{(file_size / (1024.0 * 1024 * 1024 * 1024)).round(number_round)} TB"
    end
  end
end
