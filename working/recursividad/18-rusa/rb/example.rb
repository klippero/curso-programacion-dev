def rusa(a,b)
    if a == 0
        return 0
    else
        if a % 2 == 0
            return rusa(a/2,b*2)
        else
            return b + rusa(a/2,b*2)
        end
    end
end


puts rusa(37,100)
