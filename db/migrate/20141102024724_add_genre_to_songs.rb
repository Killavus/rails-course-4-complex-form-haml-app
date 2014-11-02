class AddGenreToSongs < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.references :genre, index: true
    end
  end
end
