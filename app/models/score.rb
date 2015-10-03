class Score < ActiveRecord::Base
  belongs_to :player
  has_many :comments, dependent: :destroy
  
  validates :player_id, presence: true
  validates :score, presence: true
end
