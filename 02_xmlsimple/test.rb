require 'xmlsimple'
data = XmlSimple.xml_in("simple.xml")
puts data.to_s
puts "\n"

data['food'].each do |item|
  #puts item.inspect
  puts "name:#{item['name']} ; price:#{item['price']} ; description:#{item['description']}; calories:#{item['calories']}"
end
