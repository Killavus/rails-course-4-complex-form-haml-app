class AddAlbumAndArtistNamesToSong < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.string :artist
      t.string :album
    end
  end
end
