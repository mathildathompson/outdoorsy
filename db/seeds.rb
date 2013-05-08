#  json.each do |a|
#    OutdoorArea.create!(a['data'][0], without_protection: true)
#  end

# json file: 
#  {“idnumber”: “00xx76”,”username”: “suiuk”,”firstname”: “Rue”,
#  	”lastname”: “Ouk”,”email”: “Siuk@wintas.edu”,
#  	”phonenumber”: “333-555-1921 ext 191”,”isactive”: true ,”lastfour”: “7001” }, 
#  {“idnumber”: “00xx552”,”username”: “ronyne”,”firstname”: “Rond”,
#  	”lastname”: “Lne”,”email”: “rerte@wintas.edu”,
#  	”phonenumber”: “444-555-1921 ext 334”,”isactive”: true ,”lastfour”: “3668” }

# Here is what my db/seeds.rb file will look like…

json = ActiveSupport::JSON.decode(File.read('public/manhattanparks.json')) 
json["data"].each do |a| 
	OutdoorArea.create!(:name => a[11], 
		:acreage => a[13], 
		:address => a[16][0],
		:latitude => a[16][1], 
		:longitude => a[16][2])
end



  	# @newpark = OutdoorArea.new 


  	# json = ActiveSupport::JSON.decode(File.read('public/manhattanparks.json')) 
  	# json["data"].each do |a| 
  	# 	@newpark["address"] = a.first

  	# 	@newpark.acreage = a[0][13]
  	# end

#each_with_index
# allparks["data"][0] 
# => [1,
#  "BE0D512D-6B9C-40E2-A1B6-3A250294D1C5",
#  1,
#  1367958748,
#  "713982",
#  1367958748,
#  "713982",
#  "{\n}",
#  "6",
#  "E. 59 St., between 1 Ave. and 2 Ave.",
#  "N",
#  "14 Honey Locusts Park",
#  "M",
#  "0.295",
#  "656.2599287",
#  "14593.98235",
#  ["{\"address\":\"E. 59 St., between 1 Ave. and 2 Ave.\",\"city\":\"\",\"state\":\"NY\",\"zip\":\"\"}",
#   "40.76013727",
#   "-73.96245931",
#   nil,
#   false]]