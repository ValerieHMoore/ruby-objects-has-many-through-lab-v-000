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
  
  # def genres
  #   Song.all.collect {|song| song.genre}
  # end
  
  # def new_song(name, genre)
  #   Song.new(name, self/artist, genre)
  # end
  
  def patients
    Appointment.all.collect {|appointment| appointment.patient}
  end
  
  def new_appointment(date, @patient)
    Appointment.new(date, patient, self)
  end
  
end