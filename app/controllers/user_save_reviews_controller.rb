class UserSaveReviewsController < ApplicationController
  respond_to :html, :js

  def create
    if UserSaveReview.where(user_id: user_save_review_params[:user_id], review_id: user_save_review_params[:review_id]).exists?
      UserSaveReview.find_by(user_id: user_save_review_params[:user_id], review_id: user_save_review_params[:review_id]).destroy
    else
      UserSaveReview.create(user_save_review_params)
    end
    @review = Review.find(user_save_review_params[:review_id])
    @user_save_review = UserSaveReview.find_by( user_id: user_save_review_params[:user_id], review_id: user_save_review_params[:review_id] )

  end

  def destroy
    UserSaveReview.find_by( user_id: user_save_review_params[:user_id], review_id: user_save_review_params[:review_id] ).destroy
    @review = Review.find(user_save_review_params[:review_id])
    @user_save_review = UserSaveReview.new
  end

  private

  def user_save_review_params
    params.require(:user_save_review).permit(:user_id, :review_id)
  end
end
