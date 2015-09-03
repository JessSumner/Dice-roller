class Roll < ActiveRecord::Base
  validates_numericality_of :sides, in => 3..30 
  validates :number, presence: true, inclusion: { in 1..30 }