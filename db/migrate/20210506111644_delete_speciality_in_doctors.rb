class DeleteSpecialityInDoctors < ActiveRecord::Migration[6.0]
  def up
  	Doctor.all.each do |d|
  		spec = Speciality.find_by! name: d.speciality
  		d.specialities << spec
  	end
  	
  	remove_column :doctors, :speciality
  	
  end
  
  def down
  	add_column :doctors, :speciality, :string
  end
  
end
