class Api::V1::BeatsController < ApplicationController
    before_action :find_beat, only: [:show, :update, :destroy]
    def index 
        beats = Beat.all 
        render json: beats 
    end

    def show
        render json: @beat, status: 200
    end

    def create

    end

    def update

    end

    def destroy

    end

    private

    def beat_params
        params.require(:beat).permit(:name, :tempo, :steps)
    end

    def find_beat
        @beat= Beat.find(params[:id])
    end

end
