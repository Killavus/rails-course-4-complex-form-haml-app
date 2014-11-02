class Song < ActiveRecord::Base
  has_one :song_lyrics, dependent: :destroy
  belongs_to :genre

  validates :title, presence: true
  validates :album, presence: true
  validates :artist, presence: true
  validates :genre, presence: true

  validates :title, uniqueness: { scope: [:album, :artist] }
  
  accepts_nested_attributes_for :song_lyrics
end