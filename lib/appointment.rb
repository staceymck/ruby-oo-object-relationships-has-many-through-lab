class Appointment
    attr_accessor :doctor, :patient, :date
    @@all = []

    def initialize(date, patient, doctor)
        @doctor = doctor
        @patient = patient
        @date = date
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
end
