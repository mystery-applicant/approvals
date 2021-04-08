require 'approvals/verifiers/json_verifier'
require 'approvals/verifiers/yaml_verifier'

module Approvals
  module Verifier
    REGISTRY = {
      json: Verifiers::JsonVerifier,
      yaml: Verifiers::YamlVerifier,
    }

    class << self
      def for(format)
        REGISTRY[format]
      end
    end
  end
end
