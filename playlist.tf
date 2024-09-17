resource "spotify_playlist" "Terraform-Playlist" {
  name = "Terraform-playlist"
  tracks = ["6WCVnARSUrBrfzod8oAAQ3"]
}

#Instead of getting each track id, it is prefered to use the data block

data "spotify_search_track" "DeviSriPrasad" {
    artist = "DeviSriPrasad"
    limit = 20
}

resource "spotify_playlist" "Terraform_Playlist_DSP" {
  name        = "Terraform_Playlist_DSP"
  public      = true
  description = "Playlist contains the songs that are tuned by DSP"
  #image_url   = "https://wallpapercave.com/wp/wp9103871.jpg"  # Image URL defined here
  tracks      = [
    data.spotify_search_track.DeviSriPrasad.tracks[0].id,
    data.spotify_search_track.DeviSriPrasad.tracks[5].id,
    data.spotify_search_track.DeviSriPrasad.tracks[10].id,
    data.spotify_search_track.DeviSriPrasad.tracks[13].id,
    data.spotify_search_track.DeviSriPrasad.tracks[17].id,
    data.spotify_search_track.DeviSriPrasad.tracks[19].id
  ]
}
