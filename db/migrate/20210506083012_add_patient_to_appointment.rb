class AddPatientToAppointment < ActiveRecord::Migration[6.0]
  def change
  	add_reference :appointments, :patient, foreign_key: true
  end
end
