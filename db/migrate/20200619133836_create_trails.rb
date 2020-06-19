class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|

    	t.string :name
    	t.float :length  
    	t.integer :level
    	t.string :description
    	t.integer :location_id

      t.timestamps
    end
  end
end
