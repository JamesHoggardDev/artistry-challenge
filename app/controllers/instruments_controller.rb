class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end

    def new
        @instrument = Instrument.new
    end

    def edit
        @instrument = Instrument.find(params[:id])
    end

    def update
        #long
    end

    

    def show
        @instrument = Instrument.find(params[:id])
    end

end
