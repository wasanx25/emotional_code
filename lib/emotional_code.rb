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
        max_length = max_length_by_words(words)
        upper = [*(1..(max_length / 2 - 1))].each_with_object("") do |num, s|
          s << "人"
        end
        "＿#{upper}＿"
      end

      def set_under_ballon(words)
        max_length = max_length_by_words(words)
        under = [*(1..(max_length / 2 - 2))].each_with_object("") do |num, s|
          s << "Y^"
        end
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
  end
end

