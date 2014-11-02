class CreateSongLyrics < ActiveRecord::Migration
  def change
    create_table :song_lyrics do |t|
      t.text :text
      t.references :song, index: true

      t.timestamps
    end
  end
end
