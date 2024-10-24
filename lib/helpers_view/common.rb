# frozen_string_literal: true

require_relative 'version'
module HelpersView
  # module Common
  module Common
    def bootstrap_version_4?(bootstrap_version)
      puts(bootstrap_version)
      bootstrap_version == 4
    end
  end
end
