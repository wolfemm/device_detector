# frozen_string_literal: true

class DeviceDetector
  class NameExtractor < MetadataExtractor

    def call
      if %r{\$[0-9]}.match?(metadata_string)
        extract_metadata
      else
        metadata_string.freeze
      end
    end

    private

    def metadata_string
      regex_meta[:name]
    end

  end
end
