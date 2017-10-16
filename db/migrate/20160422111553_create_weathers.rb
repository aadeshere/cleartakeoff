class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
    	t.integer :travel_date 
    	t.text :origin
    	t.text :destination
    	t.text :carrier
    	t.integer :departure_time
    	t.integer :arrival_time 
      	t.timestamps null: false
    end
  end
end
