module BitBar
  class Base
    def initialize(indent_level = -1, &block)
      @indent_level = indent_level
      @output = []
      instance_eval(&block) if block
    end

    def separator
      @output << Separator.new(@indent_level + 1)
    end

    def item(*args, &block)
      @output << Item.new(@indent_level + 1, *args, &block)
    end

    def to_s
      @output.map(&:to_s).join("\r\n")
    end
  end
end
