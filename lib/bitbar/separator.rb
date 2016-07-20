module BitBar
  class Separator
    def initialize(indent_level)
      @indent_level = indent_level
    end

    def to_s
      ("--" * @indent_level) + "---"
    end
  end
end
