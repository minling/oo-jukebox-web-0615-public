class Jukebox

  attr_accessor :songs

  def initialize(songs) #passed in argument songs from the other file
#and set @songs = songs so that I can put the real songs into @songs
    @songs = songs
  end

  def call
    input = 'default'
    while input != 'exit'
    input = gets.strip
    array = input.split(" ")
    if array.length > 1
      play(array[1..-1].join(" "))
    else 
      case input
        when 'help'
          help
        when 'list'
        list
        when 'play'
          play
      end
    end
  end
  end

  def help 
  puts "Here are the available commands"
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
  end

  def list
   puts self.songs #this is why I can list the songs 
  end

  def play_song_without_method
    puts "What song would you like to play?"
    answer = gets.strip
      if answer.to_i.to_s == answer 
        puts "Now Playing: #{songs[answer.to_i-1]}"
      elsif songs.include?(answer)
        puts "Now Playing: #{answer}"
      else 
        puts "Invalid Input"
      end
  end

    def play(*song)
      if song == []
        play_song_without_method
      elsif song.first.to_i.to_s == song.first 
        puts "Now Playing: #{songs[song.first.to_i-1]}"
      elsif songs.include?(song.first)
        puts "Now Playing: #{song.first}"
      else 
        puts "Invalid Input"
      end
    end


  def exit
  end

end

