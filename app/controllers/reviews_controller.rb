class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def index
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  # new_reviews GET    /reviews/new(.:format)           reviews#new
  def new
    @review = Review.new
  end

  # edit_reviews GET    /reviews/edit(.:format)          reviews#edit
  def edit
    respond_to do |format|
      if @review.user_id == current_user.id
        format.html { render :edit }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { redirect_to @review, alert: 'You can\'t edit other people\'s review!' }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # reviews GET    /reviews(.:format)               reviews#show
  def show
    respond_to do |format|
      format.html
      format.json { render json: @review }
    end
  end

  # PATCH  /reviews(.:format)               reviews#update
  # PUT    /reviews(.:format)               reviews#update
  def update
    respond_to do |format|
      if @review.update(review_params) && current_user.id == @review.user_id
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews(.:format)               reviews#destroy
  def destroy
    @review.destroy
    respond_to do |format|
      if @review.user_id == current_user.id
        format.html { redirect_to user_url, notice: 'Review was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @review, alert: 'You can\'t destroy someone else\'s reviews!' }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST  /reviews(.:format) reviews#create
  def create
    @review = current_user.reviews.new(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :body, :image, :taste, :price, :location)
  end

end
