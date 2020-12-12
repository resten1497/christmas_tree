height = 7
for i in 0..height
    sk = i % 2 == 0 ? '*' : '#'
    puts ' ' * (height - i) + sk * (2 * i + 1)
end
puts ' ' * height + '|'