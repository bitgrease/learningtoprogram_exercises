# Build a playlist
# Data directories are
# ../music/pop/song1.mp3 - song3.mp3
# ../music/rock/song4.mp3 - song6.mp3
# ../music/classical/song7.mp3 - song9.mp3

def shuffle_songs(path_split_array)
  song_hash = {}
  shuffled_songs = []
  # idx 5 is the category and 6 is the file
  # go through each array entry and populate a hash
  # with a key for each category and an array of songs
  # for each key
  path_split_array.each do |entry| 
    if song_hash[entry[5]]
      song_hash[entry[5]] << entry[6]
    else
      song_hash[entry[5]] = []
      song_hash[entry[5]] << entry[6]
    end
  end

  # Iterate through the categories and get a random song each time through
  # delete the hash location when array values are empty
  until song_hash.empty?
    song_hash.keys.each do |key|
      shuffled_songs << key
      shuffled_songs << song_hash[key].delete_at(rand(song_hash[key].size))
      song_hash.delete(key) if song_hash[key].empty?
    end
  end
  shuffled_songs
end

# Declare array where will store the final shuffled list
final_list = []
songs = Dir['/Users/knetterv/rubyprograms/**/*.mp3']

# Split up the path
songs_split = songs.map {|song| song.split('/')}
# call method to shuffle
shuffled_songs = shuffle_songs(songs_split)

# Build the part of the path that doesn't change - not optimal
pre_path  =  "#{songs_split[0][0]}/#{songs_split[0][1]}/#{songs_split[0][2]}/#{songs_split[0][3]}/" \
  + "#{songs_split[0][4]}/"

# Combine prepath with the category/file.mp3 string into the final shuffled list
shuffled_songs.each_slice(2) { |a| final_list << pre_path + a.join('/') }

File.open("playlist.m3u", "w") do |f|
  final_list.each {|song| f.puts song}
end


