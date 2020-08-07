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

    def new_appointment(patient, date)
        #create new appointment
        Appointment.new(date, patient, self)
    end

    def appointments
        #go thru appointments that belong
        #to this doc
        Appointment.all.select { |app| app.doctor == self }
    end

    def patients
        #go thru appointments and collect
        #ea patient
        self.appointments.map { |app| app.patient }
    end

end