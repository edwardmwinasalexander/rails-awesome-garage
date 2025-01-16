class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
