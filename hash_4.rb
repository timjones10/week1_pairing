hash = { a: 1, b: 2, c: 3 }
puts hash.map {|k,v| [v.to_s, k.to_s]}.to_h
#=> { "1"=>"a", "2"=>"b", "3"=>"c" }
