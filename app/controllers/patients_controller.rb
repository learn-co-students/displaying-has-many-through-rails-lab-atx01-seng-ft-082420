class PatientsController < ApplicationController
    
    def index
        # byebug
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

end