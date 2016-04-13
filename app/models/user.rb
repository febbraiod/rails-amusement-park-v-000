class User < ActiveRecord::Base
  validates :name, presence: true
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    happiness > nausea ? 'happy' : 'sad'
  end
  
end
