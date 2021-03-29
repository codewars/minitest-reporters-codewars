# frozen_string_literal: true

require 'minitest'
require 'minitest/reporters'

module Minitest
  module Reporters
    class Codewars < BaseReporter
      def start
        super
      end

      def report
        super
      end

      def record(test)
        super

        if test.error?
          puts "\n<ERROR::>#{test.failure.exception.class}: #{escape_lf(test.failure.message.strip)}"
          backtrace = MiniTest.filter_backtrace(test.failure.backtrace).join("<:LF:>")
          puts "\n<LOG::-Backtrace>#{backtrace}"
        elsif test.skipped?
          puts "\n<LOG::>Test Skipped"
        elsif test.failure
          puts "\n<FAILED::>#{escape_lf(test.failure.message.strip)}"
        else
          puts "\n<PASSED::>Test Passed"
        end

        if test.time
          puts "\n<COMPLETEDIN::>#{(1000 * test.time).round(4)}"
        else
          puts "\n<COMPLETEDIN::>"
        end
      end

      def before_test(test)
        super
        puts "\n<IT::>#{test.name.sub(/^test_\d+_/, '')}"
      end

      def after_test(test)
        super
      end

      protected

      def before_suite(suite)
        puts "\n<DESCRIBE::>#{suite}"
      end

      def after_suite(_suite)
        puts "\n<COMPLETEDIN::>"
      end

      private

      def escape_lf(str)
        str.gsub("\n", "<:LF:>")
      end
    end
  end
end
