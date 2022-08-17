class EpisodesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: Episode.all, status: :ok
    end

    def show
        # episode = Episode.find(params[:id])
        render json: episode_find, serializer: EpisodesWithGuestsSerializer
    end

    def destroy
       
        episode_find.destroy
        head :no_content
    end

    def episode_find
        Episode.find(params[:id])
    end

    private

    def record_not_found         
        render json: {error: "Episode not found"}, status: :not_found     
    end

end
