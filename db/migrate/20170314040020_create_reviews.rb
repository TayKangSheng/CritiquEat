class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.string :image
      t.integer :taste
      t.integer :price
      t.integer :location
      t.references :user

      t.timestamps
    end
  end
end
