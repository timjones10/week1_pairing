require_relative './house_prices_hash.rb'

def convert_hash
  @house_prices.each do |k,v|
    district, ward, trans = k[0], k[1], v
    print_trans(district, ward, trans)
    end
end

def print_trans(district, ward, trans)
  tran = trans[:transactions]
  trans[:count].times do |x|
    puts "A house was sold in #{district}, #{ward} for #{tran[x][0]} on #{tran[x][2]}"
  end
end

convert_hash
