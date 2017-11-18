 class Coffee < ActiveRecord::Base
   has_many :reviews
   validates :blend_name, :origin, :cost, :variety, :notes, presence: true

   scope :alphabetical, -> { order(:coffee)}

   def rating
     rating_total = self.reviews.reduce(0) do |sum, review|
       sum + review.rating
     end
     rating_total.to_f / self.reviews.length
   end
 end
