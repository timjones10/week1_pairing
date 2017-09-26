require_relative './house_prices_hash.rb'

def convert_hash(input_hash)
  input_hash.each do |k,v|
    district, ward, v_data = k[0], k[1], v
    print_trans(district, ward, v_data)
    end
end

def print_trans(district, ward, v_data)
  each_tran = v_data[:transactions]
  v_data[:count].times do |x|
    puts "A house was sold in #{district}, #{ward} for #{each_tran[x][0]} on #{each_tran[x][2]}"
  end
end

def search_hash(input_hash, string)
  convert_hash(input_hash.select{ |k, v| k.include?(string) })
end

#convert_hash(@house_prices)
#search_hash(@house_prices, "Sunderland")
