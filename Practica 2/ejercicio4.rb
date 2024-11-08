def longitud (*args)
    args.each do |arg|
        puts "#{arg} --> #{arg.to_s.length} caracteres"
    end
end