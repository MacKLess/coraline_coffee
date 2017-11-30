class Review < ActiveRecord::Base
  belongs_to :coffee
  # belongs_to :user
  validates :coffee, :rating, :user, :content, :presence => true
end
  # not sure if this will be used. Just leaving it here in case:
   # scope :recent, -> { where("updated_at >=?", DateTime.now - 3.days).order(updated_at: :desc).limit(3)}
