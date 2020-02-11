# frozen_string_literal: true

require_relative 'app'

# Abort initialization if datasets are missing
warmup do
  unless Dir[File.join(__dir__, 'data', '*.yml')].any?
    raise 'Dataset directory is empty'
  end
end

run Aeneis
