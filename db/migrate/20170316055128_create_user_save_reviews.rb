class CreateUserSaveReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_save_reviews do |t|
      t.references :user
      t.references :review

      t.timestamps
    end
  end
end
