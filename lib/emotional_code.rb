require "emotional_code/version"

module EmotionalCode
  ::String.class_eval do
    (0x1F601..0x1F637).each do |hex|
      class_eval %Q{
        def #{hex.chr("UTF-8")}
          puts generate_ballon
          puts __method__
        end
      }
    end

    private
      def generate_ballon
        words = self.split("\n").each_with_object("") do |w, s|
          s << "＞　#{w}　＜\n"
        end.chop
        saying = <<-"EOS"
#{set_upper_ballon(words)}
#{words}
#{set_under_ballon(words)}
        EOS
      end

      def set_upper_ballon(words)
        upper = set_number_of_contents(1, words, "人")
        "＿#{upper}＿"
      end

      def set_under_ballon(words)
        under = set_number_of_contents(2, words, "Y^")
        "￣#{under}Y￣"
      end

      def max_length_by_words(words)
        words.split("\n")
             .map { |w| delicate_byte_size(w) }
             .max
      end

      def delicate_byte_size(word)
        word.chars.map do |c|
          c.bytesize == 1 ? 1 : 2
        end.inject(:+)
      end

      def set_number_of_contents(num, words, contents)
        max_length = max_length_by_words(words)
        [*(1..(max_length / 2 - num))].each_with_object("") do |num, s|
          s << contents
        end
      end
  end
end

