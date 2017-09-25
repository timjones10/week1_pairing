hash = { a: 1, b: 2 }
puts hash.each {|k,v| hash[k] = v + 1}
#=> { a: 2, b: 3 }
