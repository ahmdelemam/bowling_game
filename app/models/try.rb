class Try < ActiveRecord::Base
  belongs_to :frame
  
  validates :score, numericality: { only_integer: true, less_than_or_equal_to: 10 }, on: :update
  
  after_update :set_status_as_strick, if: Proc.new { |try| self.sort== 1 && self.score == 10 }
  after_update :set_status_as_spare, if: Proc.new { |try|
      f = self.frame
      first_try = f.tries.first
      self.sort==2 && !self.score.nil? && !first_try.score.nil? && self.score + first_try.score == 10 
  }
    
    
  private
  
  def set_status_as_strick
    f = self.frame; f.status = :strick; f.save
  end
  def set_status_as_spare
    f = self.frame; f.status = :spare; f.save
  end
  
end
