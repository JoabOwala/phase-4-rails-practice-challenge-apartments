class ApartmentsController < ApplicationController
    #GET /apartments
    def index
        apartments = Apartment.all
        render json: apartments
    end

    #POST /apartments
    def create
        apartment = Apartment.create(apartment_params)
        render json: apartment, status: :created
    end

    #PATCH /apartments/:id
    def update
        apartment = find_apartment
        apartment.update(apartment_params)
        render json: apartment
    end

    #DELETE /apartments/:id

    def destroy
        apartment = find_apartment
        apartment.destroy
        head :no_content
    end

    private

    def find_apartment
        Apartment.find(params[:id])
    end
    def apartment_params
        parmas.permit(:number)
    end

end
