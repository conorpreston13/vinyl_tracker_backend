class VinylsController < ApplicationController
        # ------------------index allows you to pull up all of the vinyl in the collection
    def index
        @vinyls = Vinyl.all
        render json: @vinyls
    end
        # ------------------show allows you to pick out 1 specific vinyl to show by id
    def show
        @vinyl = Vinyl.find(params[:id])
        render json: @vinyl
    end
        # ------------------create allows you to create a new entry
    def create
        @vinyl = Vinyl.new(vinyl_params)
            if @vinyl.save
                render json: @vinyl, status: 201
            else
                render json: @vinyl.errors, status: 422
            end
    end
        # ------------------these are strong params for the entries
    def vinyl_params
        params.require(:vinyl).permit(:artist, :album, :release_year)
    end
        # ------------------update allows you to update an entry
    def update
        @vinyl = Vinyl.find(params[:id]).update(vinyl_params)
           render json: 'Entry has been successfully updated!'
    end
        # ------------------destroy....well, destroys the entry.
    def destroy
        @vinyl = Vinyl.find(params[:id])
            if @vinyl.destroy
                render json: @vinyl, status: 200
            else
                render json: { errors: 'Could Not Delete Successfully' }, status: 400
            end
    end
        # ------------------private makes these methods specific to this controller 
    private
end
