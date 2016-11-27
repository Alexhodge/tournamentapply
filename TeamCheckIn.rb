teamArray = []
teamNameArray = []
teamCheckArray = []
cnt = 0
quitcheck1 = 0
quitcheck2 = 0


while (quitcheck1 != 1)
    puts "Please enter your team name"
    tempname = gets.chomp
    teamNameArray << tempname
    puts "If all names have been entered press 1, otherwise press 0"
    quitcheck1 = gets.to_i

end

while (quitcheck2 != 1)
  puts "Please enter your team name to sign in"
  tempname2 = gets.chomp
  teamCheckArray << tempname2
  puts "If you would like to check and see what teams have been checked in press 1, otherwise press 0."
  quitcheck2 = gets.to_i

end

while(teamCheckArray != [""])
  if teamCheckArray.include?(tempname2)
    teamCheckArray.delete(tempname2)
    
  else
    puts "Your team was not found in our system!"
end
end
