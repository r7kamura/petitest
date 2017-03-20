require "petitest/reporters/null_reporter"

module Petitest
  module Reporters
    class DotReporter < ::Petitest::Reporters::NullReporter
      # @note Override
      def after_running_test_case(test_case)
        print test_case.error ? "F" : "."
      end

      def after_running_test_cases(test_cases)
        puts
      end
    end
  end
end
