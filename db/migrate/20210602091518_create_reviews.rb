class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.integer :rating
      t.text :content
      t.string :question1
      t.string :question2
      t.string :question3

      t.timestamps
    end
  end
end
