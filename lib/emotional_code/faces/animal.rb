module EmotionalCode
  module Faces
    module Animal
      ::String.class_eval do
        def 😸
          puts "Cat is smile."
        end
        
        def 😹
          puts "Cat is sad."
        end

        def 😻
          puts "Cat is lovely."
        end

        def 😿
          puts "Cat is sad."
        end

        def 🙈
          puts "Monkey doesn't intend to see you."
        end

        def 🙉
          puts "Monkey doesn't intend to listen you."
        end

        def 🙊
          puts "Monkey doesn't intend to say you."
        end
      end
    end
  end
end
