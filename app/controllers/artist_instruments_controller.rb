class ArtistInstrumentsController < ApplicationController

    def index
        @artist_instruments = ArtistInstrument.all
    end

    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create
        @artist_instrument = ArtistInstrument.create(artist_instrument_params)

        redirect_to artist_path(@artist_instrument.artist_id)
    end

    def edit
        @artist_instrument = ArtistInstrument.find(params[:id])
    end

    def update
        # @artist_instrument.update
    end

    def show
        @artist_instrument = ArtistInstrument.find(params[:id])
    end

    private
     
    def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end
