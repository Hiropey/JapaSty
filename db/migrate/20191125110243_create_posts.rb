class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string     :climate
      t.text       :detailed_place
      t.string     :visit_date,         null: false
      t.string     :visit_cost,         null: false
      t.string     :visit_length,       null: false
      t.float      :total_rate,         null: false
      t.float      :food_rate
      t.float      :hotel_rate
      t.float      :entertainment_rate
      t.float      :sightseeing_rate
      t.float      :language
      t.text       :content
      t.references :country, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
