module NaturalDSL
  module Expectations
    class Keyword < Base
      attr_reader :type

      def initialize(type)
        @type = type
      end

      def keyword?
        true
      end

      protected

      def perform_read(stack, raise:)
        stack.pop_if_keyword(@type, raise: raise)
      end
    end
  end
end
