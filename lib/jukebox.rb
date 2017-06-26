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

def help
  puts "I accept the following commands:"
  puts "- help : display this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song_choice = gets.chomp
  if (1..songs.length).include?(user_song_choice.to_i)
    puts "Playing #{songs[user_song_choice.to_i - 1]}"
  elsif songs.include?(user_song_choice)
    puts "Playing #{user_song_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  case user_response
  when "exit"
    exit_jukebox
  when "list"
    list(songs)
    run(songs)
  when "play"
    play(songs)
    run(songs)
  when "help"
    help
    run(songs)
  end
end
