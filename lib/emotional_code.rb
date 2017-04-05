require "emotional_code/version"
require "emotional_code/face"

module EmotionalCode
  ::String.class_eval do
    def 😁
      puts generate_ballon
      puts "\n\n"
      puts __method__
    end
    
    def 😂 
      puts generate_ballon
      puts "\n\n"
      puts __method__
    end

    def 😃
      puts generate_ballon
      puts "\n\n"
      puts __method__
    end

    def 😄
      puts generate_ballon
      puts "\n\n"
      puts __method__
    end

    def 😠
      puts generate_ballon
      puts "\n\n"
      puts __method__
    end

    def 😡
      puts generate_ballon
      puts "\n\n"
      puts __method__
    end

    private
      def generate_ballon
        words = self.gsub(/(.+?)\n/, '＞　\1　＜' + "\n")
        saying = <<-"EOS"
        ＿人人人人人人人人＿
        #{words}
        ￣Y^Y^Y^Y^Y^Y^Y￣
        EOS
      end
  end
end

