class Event < ActiveRecord::Base
  has_many :media

  # validates :title, :description, :start_year, :end_year, :latitude, :longitude presence: true
  # validates :icon_type, :url

end



