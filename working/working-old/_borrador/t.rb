<<<<<<< HEAD
def format_num(num)
	result = ""
	div = num
	while div > 1000
		resto = div % 1000
		div = div / 1000
		result = result + "," + "%03d" % resto
	end
    "%d" % div + result
end

format_num(12948)
=======
# @param {Integer} x
# @return {Integer}
def reverse(x)
    result = reverse_str(x.to_s)
    result.to_i
end

def reverse_str(x)
    if x.to_i < 10
        return x
    else
        return ( x.to_i % 10 ).to_s + reverse_str((x.to_i/10).to_s)
    end
end

puts reverse(123)
>>>>>>> 5a4d8dc7686cd9c9d3c4f16c3c6323a5b96056a5
