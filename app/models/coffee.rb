 class Coffee < ActiveRecord::Base
   validates :blend_name, :presence => true
 end
