import json
from os.path import expanduser

def convert_time(ms):
    x = ms / 1000
    x % 60
    m, s = divmod(x, 60)
    return "%d:%02d" % (m, s)

home = expanduser("~")
filename = home + "/.config/Google Play Music Desktop Player/json_store/playback.json"

# Open file and read in JSON data
with open(filename, 'r') as playback_data:
  json_data = json.load(playback_data)

  # Only display if song is playing
  playing = json_data['playing']
  if (playing):

    # Get the song names and artist
    song_name = json_data['song']['title']
    song_artist = json_data['song']['artist']
    time_current = json_data['time']['current']
    time_total = json_data['time']['total']

    # Display the song information
    print("{0} - {1} - {2}/{3}".format(song_name, song_artist, convert_time(time_current), convert_time(time_total)))
  else:
    # No music, display nothing
    print("")

