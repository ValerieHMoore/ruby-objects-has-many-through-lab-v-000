require 'pry'

class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  # describe "#patients" do
  #   it "has many patients, through appointments" do
  #     doctor_who = Doctor.new("The Doctor")
  #     hevydevy = Patient.new("Devin Townsend")
  #     doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
  #     expect(doctor_who.patients).to include(hevydevy)

    def patients
    Appointment.all.collect {|appointment| appointment.patient}
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
end