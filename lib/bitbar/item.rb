require 'active_support/core_ext/array/extract_options'
require 'delegate'

module BitBar
  class Item < Base
    class Options < ::SimpleDelegator
      def initialize(opts = {})
        super(opts)
      end

      def to_s
        __getobj__.inject([]){|out, tuple| out << tuple.join("=") }.join(" ")
      end
    end

    def initialize(*args, &block)
      @opts = Options.new(args.extract_options!)
      @indent_level, @title = args
      super(@indent_level, &block)
    end

    def to_s
      prefix = ("--" * @indent_level) + @title.to_s
      [@opts.any? ? [prefix, @opts].join("|") : prefix, *@output.map(&:to_s)].join("\r\n")
    end
  end
end
