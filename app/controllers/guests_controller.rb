class GuestsController < ApplicationController

    def index
        guest = Guest.all
        render json: guest, status: :ok
    end

end
