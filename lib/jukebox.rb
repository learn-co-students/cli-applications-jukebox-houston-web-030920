songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#helps users understand how to use jukebox
def help
 puts "I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
end

#-------------------------

#outputs a list of songs users can select from
def list(songs)
  songs.each.with_index(1) do |song, i|
    puts "#{i}. #{song}"
  end
end

#-------------------------

#plays songs users select by song name or track number
def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip

  num_of_songs = (1..songs.length).to_a
  if num_of_songs.include?(user_response.to_i)
    pp "yay #{user_response}"
  end

  i = 1
  if !songs.include?(user_response)
    puts "Invalid input, please try again"
  end
  songs.each do |song|
    if (i == user_response.to_i || user_response == song)
      puts "Playing #{song}"
    end
    i += 1
  end
end

#-------------------------

#exits jukebox when users want to stop listening
def exit_jukebox
  puts "Goodbye"
end

#implement all helper methods to run jukebox
def run

end
