class Api::V1::BeatsController < ApplicationController

    def index 
        beats = Beat.all 
        render json: beats 
    end

    def show
        beat  = Beat.find(params[:id])

        render json: beat
    end

    def create
        beat = Beat.create(beat_params)

        render json: beat
    end

    def update
        beat.update!(beat_params)

        render json: beat
    end

    

    private

    def beat_params
        params.require(:beat).permit!
    end


end
