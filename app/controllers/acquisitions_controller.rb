class AcquisitionsController < ApplicationController
        # ------------------this first index will just return all acquisitions
    def index
        @acquisitions = Acquisition.all
        render json: @acquisitions
    end
        # ------------------this index will need to be able to filter a time period
    # def index
    #   @acquisitions = Acquisition.where(start_date: params[:start_date]..params[:end_date])
    #   render json: @acquisitions
    # end
        # ------------------show allows you to pick out a specific acquisition by id
    def show
        @acquisition = Acquisition.find(params[:id])
        render json: @acquisition
    end
        # ------------------create allows you to crete a new acquisition
    def create
        @acquisition = Acquisition.new(acquire_params)
            if @acquisition.save
                render json: @acquisition, status: 201
            else
                render json: @acquisition.errors, status: 422
            end
    end
        # ------------------these are strong params for acquisitions
    def acquire_params
        params.require(:acquisition).permit(:acquired_month, :acquired_year, :vinyl_id)
    end
        # ------------------update will let you update a acquisition
    def update
        @acquisition = Acquisition.find(params[:id]).update(aquire_params)
           render json: 'Entry has been successfully updated!'
    end
        # ------------------destroy does exactly what it says
    def destroy
        @acquisition = Acquisition.find(params[:id])
            if @acquisition.destroy
                render json: @acquisition, status: 200
            else
                render json: { errors: 'Could Not Delete Successfully' }, status: 400
            end
    end
    
end
