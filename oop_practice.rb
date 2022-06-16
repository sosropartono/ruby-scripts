class MyCar

    attr_accessor :color,:model,:current_speed
    attr_reader :year

    def initialize(year,color,model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
    end

    def spray_paint(color)
        self.color = color
        puts "color modified to #{color}!"


    end

    def speed_up(speed)
        self.current_speed += speed
        puts "speeding up"
    end
    def break(speed)
        self.current_speed -= speed
        puts "slowing down"
    end

    def shut_car_off
        self.current_speed = 0
        "car shut off"
    end
end

lumina = MyCar.new(2001, "chevy lumina", "white")
lumina.speed_up(20)
puts lumina.current_speed
lumina.break(20)
puts lumina.current_speed
lumina.shut_car_off
puts lumina.current_speed

lumina.color = "red"
puts lumina.color
puts lumina.year

lumina.spray_paint("red")
puts lumina.to_s