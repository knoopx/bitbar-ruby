module BitBar
  class Menu < Base
    def initialize(&block)
      super
      puts self.to_s
    end
  end
end
