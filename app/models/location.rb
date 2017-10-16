class Location < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorite_store
end
