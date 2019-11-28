class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|

      t.text       :detailed_place
      t.string     :visit_date,         null: false
      t.string     :visit_cost,         null: false
      t.string     :visit_length,       null: false
      t.integer    :total_rate,         null: false
      t.integer    :food_rate
      t.integer    :hotel_rate
      t.integer    :entertainment_rate
      t.integer    :sightseeing_rate
      t.integer    :language
      t.text       :content
      t.references :country, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
