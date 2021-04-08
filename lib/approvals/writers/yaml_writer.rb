module Approvals
  module Writers
    class YamlWriter < TextWriter
      def extension
        'yaml'
      end

      def format(data)
        data.to_yaml
      end
    end
  end
end
