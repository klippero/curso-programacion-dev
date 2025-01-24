def m(*pa, **kwa)
    puts "Positional args: #{pa}"
    puts "Keyword args: #{kwa}"
end

m(1, 2, 3, a:'alpha', b:'beta')
