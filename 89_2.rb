Song = Struct.new(:title, :name, :length)
File.open("songdata.rb") do |song_file|
  songs = []

  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    mins, secs = length.scan(/\d+/)
    songs << Song.new(title, name, length)
  end

  puts songs[1]
end
