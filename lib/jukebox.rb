require "pry"




def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end



def play(cool_songs)
  puts "Please enter a song name or number:"
    input = gets.chomp()

    if (1..9).to_a.index(input.to_i) != nil
      puts "Playing #{cool_songs[input.to_i - 1]}"
    elsif cool_songs.index(input) != nil
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
end


def exit_jukebox
  puts "Goodbye"
end


def run(cool_songs)
  help()
  input = prompt()

  while input != "exit"
    if input == "list"
      list(cool_songs)
      input = prompt()
    elsif input == "play"
      play(cool_songs)
      input = prompt()
    elsif input == "help"
      help()
      input = prompt()
    else
      puts "Invalid command"
      help()
      input = prompt()
    end
  end

  exit_jukebox()
end
