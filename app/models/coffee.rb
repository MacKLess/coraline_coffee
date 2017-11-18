 class Coffee < ActiveRecord::Base
   has_many :reviews
   validates :blend_name, :origin, :cost, :variety, :notes, presence: true

   scope :alphabetical, -> { order(:coffee)}
 end
