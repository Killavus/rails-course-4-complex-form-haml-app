class Genre < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  has_many :songs, dependent: :destroy_all

  def to_s
    self.name
  end
end
