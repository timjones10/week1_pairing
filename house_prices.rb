require_relative './house_prices_hash.rb'

def convert_hash
  @house_prices.each do |k,v|
    district = k[0]
    ward = k[1]
    trans = v[:transactions]
    v[:count].times do |x|
      puts "A house was sold in #{k[0]}, #{k[1]} for #{trans[x][0]} on #{trans[x][2]}"
        end
    end
end


convert_hash
