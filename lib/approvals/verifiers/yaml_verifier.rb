module Approvals
  module Verifiers
    class YamlVerifier
      def initialize(received_path, approved_path)
        self.received_path = received_path
        self.approved_path = approved_path
      end

      def verify
        approved == received
      end

      private

      attr_accessor :approved_path, :received_path

      def approved
        strip_trailing_whitespace(File.read(approved_path))
      end

      def received
        strip_trailing_whitespace(File.read(received_path))
      end

      def strip_trailing_whitespace(content)
        content.to_s.split("\n").map(&:rstrip).join
      end
    end
  end
end
