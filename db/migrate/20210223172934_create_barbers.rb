class CreateBarbers < ActiveRecord::Migration[6.1]
  def change
  		create_table :barbers do |t|
	 		t.text :name
	 		
	  		t.timestamps
	   end

   Barber.create :name => 'Jessie Pinkman'
   Barber.create :name => 'Walter Wuite'
   Barber.create :name => 'Gus Fring'

 end
end