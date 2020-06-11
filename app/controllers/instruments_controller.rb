class InstrumentsController < ApplicationController

    def index 
        @instruments = Instrument.all 
    end 

    def show
        @instrument = Instrument.find(params[:id]) 
    end 
    
    def new 
        @instrument = Instrument.new 
        @artists = Artist.all  
    end

    def create 
        @instrument = Instrument.create(instrument_params)
        if @instrument.valid?
            redirect_to artist_path(@artist)
        else 


end
