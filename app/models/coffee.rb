 class Coffee < ActiveRecord::Base
   validates :blend_name, :origin, :cost, :variety, :notes, presence: true

   scope :alphabetical, -> { order(:coffee)}
 end
