require "petitest/assertion_failure_error"
require "petitest/assertion_skip_error"
require "petitest/configuration"
require "petitest/subscriber_concerns/output_concern"
require "petitest/subscriber_concerns/time_concern"
require "petitest/subscribers/base_subscriber"
require "petitest/subscribers/document_report_subscriber"
require "petitest/subscribers/json_report_subscriber"
require "petitest/subscribers/progress_report_subscriber"
require "petitest/test"
require "petitest/test_group"
require "petitest/test_method"
require "petitest/test_plan"
require "petitest/test_runner"
require "petitest/texts/base_text"
require "petitest/texts/error_message_text"
require "petitest/texts/failures_element_text"
require "petitest/texts/failures_text"
require "petitest/texts/filtered_backtrace_text"
require "petitest/texts/raised_code_text"
require "petitest/texts/test_result_character_text"
require "petitest/texts/test_result_line_text"
require "petitest/texts/tests_result_margin_top_text"
require "petitest/texts/tests_result_text"
require "petitest/texts/test_counts_text"
require "petitest/texts/times_text"
require "petitest/version"

module Petitest
  class << self
    # @return [Petitest::Configuration]
    def configuration
      @configuration ||= ::Petitest::Configuration.new
    end
  end
end
