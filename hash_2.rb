hash = { a: 2, b: 5, c: 1 }

puts hash.keys.map.with_index {|k,i| [k, hash.values.sort[i]]}.to_h

# => { a: 1, b: 2, c: 5 }
