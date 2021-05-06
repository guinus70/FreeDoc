class FillSpecialityTable < ActiveRecord::Migration[6.0]
  def up
  	speciality_table = Doctor.select(:speciality).map(&:speciality).uniq
  	#puts speciality_table
  	speciality_table.each do |spec|
  		Speciality.create!(name: spec)
  	end
  end
  
  def down
  	Speciality.destroy_all
  end
  
end
