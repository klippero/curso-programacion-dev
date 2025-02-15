def MCD(a,b)
    if a % b == 0
        b
    else
        MCD(b,a % b)
    end
end


puts MCD(300,33880)
puts MCD(180,1032)
puts MCD(16,21)
puts MCD(6,9)
