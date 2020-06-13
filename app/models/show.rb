class Show < ActiveRecord::Base

  def self.highest_rating
      self.maximum(:rating)
  end

  def self.most_popular_show
    self.highest_rating
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.lowest_rating
  end

  def self.ratings
      self.sum(:rating)
  end

  def self.popular_shows
    self.where(:rating > 5)
  end

  def self.shows_by_alphabetical_order
    self.where(rating: :desc)
  end

end
