class Game < ActiveRecord::Base
  validates :gamer_name, presence: true
  
  has_many :frames, dependent: :destroy
  accepts_nested_attributes_for :frames
  
  after_create :create_ten_frames
  before_save :calculate_score, on: :update
  
  private
  def create_ten_frames
    (1..10).step(1) do |frame|
      Frame.create(game_id: self.id)
    end
  end
  def calculate_score
    self.score = Try.joins(:frame).where('frames.game_id = ? ', self.id).sum(:score)
  end

end
