music_store = {
    metal:{
      albums_available: {
        vinyl: 50,
        cd: 10,
        tape: 90,
        digital: ["mp3", "flac", "WMA"]
      },
      artists:[ "Metallica", "Sepultura", "Iron Maiden"]
    },
    hiphop: {
      albums_available: {
        vinyl: 50,
        cd: 10,
        tape: 90,
        digital: ["mp3", "flac", "WMA"]
      },
      artists: ["Public Enemy", "House of Pain", "Beaste Boys"]
    },
    punk: {
      albums_available: {
        vinyl: 50,
        cd: 10,
        tape: 90,
        digital: ["mp3", "flac", "WMA"]
      },
      artists: ["Sex Pistols", "Ramones", "NOFX"]
    },
    electronic: {
      albums_available: { 
        vinyl: 50,
        cd: 10,
        tape: 90,
        digital: ["mp3", "flac", "WMA"]
      },
     artists: ["Orbital", "Prodigy", "Faithless"] 
    }
}

puts music_store[:hiphop][:artists]

p music_store[:hiphop][:albums_available][:digital][0]

p music_store[:metal][:artists][2]

p music_store[:punk][:artists][2].replace "Bad Religion"

p music_store[:punk][:albums_available][:vinyl].even?


