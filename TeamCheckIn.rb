teamNameArray = [] # this is the array that is filled when teams SIGN UP for the tournament
teamCheckArray = [] # this is the array that is filled when team SIGN IN for the tournament
quitcheck1 = 0


while (quitcheck1 != 1) #Gathering team names which will be stored in a database i assume. Dont know how to do that tho.
    puts "Please enter your team name"
    tempname = gets.chomp.downcase
    teamNameArray << tempname

    puts "If all names have been entered press 1, otherwise press 0" # We can get rid of "pres 1 or 0"but i think it helps to keep the program simple and regimented right now.
    quitcheck1 = gets.to_i
end


  while (teamNameArray != [])
    puts "Please enter your team name to sign in"   #This else loop tells if a team is not signed up and allowes them to sign up and be added to the teamNameArray so that they can sign in
    tempname2 = gets.chomp.downcase
    teamCheckArray << tempname2
    quitcheck2 = gets.to_i

      if teamNameArray.include?(tempname2)
        teamNameArray.delete(tempname2)

      else
        teamCheckArray.delete(tempname2)
        puts "Your team was not found in our system!"
        puts "Please sign up now by entering your team name"
        tempname = gets.chomp.downcase
        teamNameArray <<tempname

  end


  puts "Teams that have signed up but have not signed in are:  #{teamNameArray}."
  puts "Teams that have signed up and that have signed in are: #{teamCheckArray}."

end
