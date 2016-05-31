class Frame < ActiveRecord::Base 
  belongs_to :game
  has_many :tries, dependent: :destroy
  accepts_nested_attributes_for :tries
  enum status: { strick: 0, spare: 1, open: 2 }
  after_create :create_three_tries
  
  private
  
  def create_three_tries
    (1..3).step(1) do |i|
      Try.create(frame_id: self.id, sort: i)
    end
  end

end
