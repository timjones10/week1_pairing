require_relative './house_prices_hash.rb'

def convert_hash
  @house_prices.each do |k,v|
    district, ward, all_trans = k[0], k[1], v
    print_trans(district, ward, all_trans)
    end
end

def print_trans(district, ward, all_trans)
  each_tran = all_trans[:transactions]
  all_trans[:count].times do |x|
    puts "A house was sold in #{district}, #{ward} for #{each_tran[x][0]} on #{each_tran[x][2]}"
  end
end

convert_hash
