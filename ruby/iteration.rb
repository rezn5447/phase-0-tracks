def add_green

puts ("Add Green to it!")
yield('Pete')

end

add_green{ |n1| " And Orange while you are at it! Hurry #{n1} !"}