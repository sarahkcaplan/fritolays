class FavoriteStore < ActiveRecord::Base
  has_many :locations
  has_many :stores
end
