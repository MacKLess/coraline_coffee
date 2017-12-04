 class Product < ActiveRecord::Base
   has_many :reviews
   validates :blend_name, :origin, :cost, :variety, :notes, presence: true

   scope :alphabetical, -> { order(:blend_name) }

   def rating
     if self.reviews.any?
       rating_total = self.reviews.reduce(0) do |sum, review|
         sum + review.rating
       end
       return rating_total.to_f / self.reviews.length
     else
       return nil
     end
   end
 end
