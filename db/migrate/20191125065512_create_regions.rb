class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|

      t.string     :region, null: false
      
    end
  end
end
