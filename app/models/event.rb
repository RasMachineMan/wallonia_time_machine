class Event < ActiveRecord::Base
  has_many :media

  FIRST_YEAR = -3500
  LAST_YEAR = Time.now.year
  TOTAL_YEARS = - FIRST_YEAR + LAST_YEAR
  PERIODS = [
    ["Antiquite", -3500 , 476 ],
    ["Moyen Âge", 476 , 1492],
    ["Temps Modernes",1492 , 1789 ],
    ["Epoque Contemporaine", 1789, LAST_YEAR]
  ]

  def inrange
    ((start_year - Event::FIRST_YEAR) * 100 / (Event::LAST_YEAR - Event::FIRST_YEAR) * 100 ) / 100
  end

  def self.get_period_percent(range)
    FIRST_YEAR < 0 ? first_year = - FIRST_YEAR : first_year = FIRST_YEAR
    total_range = first_year + LAST_YEAR
    ( range * 100 / total_range * 100 ) / 100
  end
end



