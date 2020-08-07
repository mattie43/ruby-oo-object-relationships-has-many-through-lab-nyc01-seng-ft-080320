class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        #create new appointment
        Appointment.new(date, self, doctor)
    end

    def appointments
        #go thru appointments and
        #return all that belong to self
        Appointment.all.select { |app| app.patient == self }
    end

    def doctors
        #go thru appointments and
        #collect ea doctor for ea appointment
        self.appointments.map { |app| app.doctor }
    end

end