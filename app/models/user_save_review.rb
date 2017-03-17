class UserSaveReview < ApplicationRecord
  belongs_to :user
  belongs_to :review

  def self.topbookmarkedcritiqueater
    select("reviews.user_id, count(reviews.user_id)")
    .joins("INNER JOIN reviews on user_save_reviews.review_id = reviews.id")
    .group("reviews.user_id")
    .order("count(reviews.user_id) DESC")
    .limit(3)
  end

  def self.topbookmarkedcritiqueat
    select("review_id, count(review_id)")
    .group("user_save_reviews.review_id")
    .order("count(review_id) DESC")
    .limit(3)
  end
end
