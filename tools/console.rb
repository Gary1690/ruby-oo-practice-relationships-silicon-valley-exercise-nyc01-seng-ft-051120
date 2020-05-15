
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
su1 = Startup.new("Macho_Man", "Macho", "machoman.com")
su2 = Startup.new("Public_Policy", "Henry_Kissinger", "kiss.com")
su3 = Startup.new("Gentle_gary", "gary", "gentle.com")
su4 = Startup.new("Gullible", "Grant", "whatibelieveyou.com")
vc1 = VentureCapitalist.new("Mohamed", 208000452525)
vc2 = VentureCapitalist.new("Charlie_Brown", 15)
vc3 = VentureCapitalist.new("Fauci", 14000854)
vc4 = VentureCapitalist.new("Trump", 1000000001)
fund1 = FundingRound.new(su1, vc1, 2000000, "Angel")
fund2 = FundingRound.new(su2, vc4, 10, "Seed")
fund3 = FundingRound.new(su4, vc1, 10004554, "Series A")
fund4 = FundingRound.new(su3, vc3, 499515555, "Series B")
fund5 = FundingRound.new(su2, vc3, -342434, "Seed")
fund6 = FundingRound.new(su4, vc2, 1, "Angel")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line