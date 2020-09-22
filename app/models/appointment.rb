class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date
        self.appointment_datetime.to_formatted_s(:long).split.insert(3, "at").join(" ")
    end

    def patient_name
        self.patient.name
      end

      def doctor_name
        self.doctor.name
      end
end
