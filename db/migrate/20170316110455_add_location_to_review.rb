class AddLocationToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :address, :string
  end
end
