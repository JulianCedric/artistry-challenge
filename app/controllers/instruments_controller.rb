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
            redirect_to instrument_path(@instrument)
        else 
            @artists = Artist.all 
            render :new 
        end
    end

private 

    def instrument_params 
        params.require(:instrument).permit(:name, :classification)
    end

end
