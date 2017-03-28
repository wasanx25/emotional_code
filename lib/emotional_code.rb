require "emotional_code/version"

module EmotionalCode
  ::String.class_eval do
    def 😁
      puts "I'm happy."
    end
    
    def 😂 
      puts "I'm sad."
    end

    def 😃
      puts "Smily!"
    end

    def 😄
      puts "I'm so happy!"
    end

    def 😠
      puts "I'm angry."
    end

    def 😡
      puts "I'm so angry."
    end
  end
end

